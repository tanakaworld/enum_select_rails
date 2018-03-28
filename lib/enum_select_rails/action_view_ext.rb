class ActionView::Helpers::FormBuilder
  def enum_select(record, options = {}, html_options = {})
    pluralized = record.to_s.pluralize
    klass = self.object.class
    base = klass.send(pluralized)
    i18n = klass.send("#{pluralized}_i18n")

    select record.to_sym, base.keys.map {|k| [i18n[k], k]}, options, html_options
  end
end
