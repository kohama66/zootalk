namespace :delete_group do
  desc "全グループの時間を減らす"
  task time: :environment do
    #ここから処理を書いていく
    #定期実行する際に、そのログを取っておくのは大事。ログがないと定期実行でエラーが起きても分からない。
    logger = Logger.new 'log/recover_user_life.log'
 
    #全てのユーザーを取得していく
    #eachを使うと全てのユーザーがメモリに載せられてしまうが、find_eachにすることで1000件ずつ読み込んでメモリに展開される ユーザー数が多いならfind_eachを使った方が安全
    Group.find_each do |group|
      begin
        #ユーザーのライフを、max_lifeに変える。
        # group.update!(name: "GROUP!")
        new_time = group.time
        new_time -= 1
        group.update!(time: new_time)
 
      rescue => e
        #何かしらエラーが起きたら、エラーログの書き込み ただし次のユーザーの処理へは進む
        logger.error "group_id: #{group.id}でエラーが発生"
        logger.error e
        logger.error e.backtrace.join("\n")
        next
      end
    end
  end
end