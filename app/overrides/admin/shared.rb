Deface::Override.new(virtual_path: 'spree/admin/shared/_product_tabs',
                     name: 'add_qa_link',
                     insert_bottom: '[data-hook="admin_product_tabs"]',
                     partial: 'spree/admin/shared/additional_product_tabs')
