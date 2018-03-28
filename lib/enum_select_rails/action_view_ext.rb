class ActionView::Helpers::FormBuilder
  def enum_select(record, options = {}, html_options = {})
    pluralized = record.to_s.pluralize
    klass = self.object.class
    base = klass.send(pluralized)

    # check i18n
    i18n_method = "#{pluralized}_i18n".to_sym
    if klass.methods.include? i18n_method
      i18n = klass.send(i18n_method)
      select record.to_sym, base.keys.map {|k| [i18n[k], k]}, options, html_options
    else
      select record.to_sym, base.keys.map {|k| [k, k]}, options, html_options
    end
  end
end
