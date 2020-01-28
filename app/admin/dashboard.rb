ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
      columns do
        columns do
          panel 'Últimos posts publicados' do
            ul do
              Post.last(5).map do |post|
                li link_to(post.title, admin_post_path(post))

              end
            end
          end
        end
        column do
          panel 'Usuarios' do
            ul do
              li "Usuarios registrados: #{User.count}"
              li "Administradores registrados: #{AdminUser.count}"
            end
          end
        end
        column do
          panel 'Post' do
            ul do
              li "Post creados: #{Post.count}"
              li "Comentarios creados: #{Comment.count}"
            end
          end

        end
      end


  end # content
end
