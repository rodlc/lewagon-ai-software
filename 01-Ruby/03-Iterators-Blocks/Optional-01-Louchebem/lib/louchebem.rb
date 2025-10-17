def louchebemize(sentence)
  vowels   = %w[a e i o u y]
  suffixes = %w[em é ji oc ic uche ès]

  sentence.split.map do |token|
    first_l = token.index(/\p{L}/)
    last_l  = token.rindex(/\p{L}/)
    next token if first_l.nil?

    lead, core, tail = token[0...first_l], token[first_l..last_l], token[(last_l + 1)..]
    next token if core.length <= 1

    v_idx = core.downcase.chars.index { |c| vowels.include?(c) }
    trans = if v_idx.nil? || v_idx.zero?
              "l#{core}#{suffixes.sample}"
            else
              cons = core[0...v_idx]
              rest = core[v_idx..]
              "l#{rest}#{cons}#{suffixes.sample}"
            end

    trans[0] = trans[0].upcase if core[0] =~ /[A-Z]/
    "#{lead}#{trans}#{tail}"
  end.join(' ')
end