Deface::Override.new(virtual_path: 'spree/admin/shared/_product_tabs',
                     name: 'add_qa_link',
                     insert_bottom: '[data-hook="admin_product_tabs"]',
                     partial: 'spree/admin/shared/additional_product_tabs')

Deface::Override.new(virtual_path: 'spree/admin/shared/_product_sub_menu',
                     name: "add_qa_tab",
                     insert_bottom: "[data-hook='admin_product_sub_tabs']",
                     text: "<%= tab :qna, url: pending_questions_admin_products_url, label: qna_tab_label, match_path: '/products/pending_questions' %>")
