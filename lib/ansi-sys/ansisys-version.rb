module AnsiSys
  module Version #:nodoc:
    MAJOR = 1
    MINOR = '0'
    PRE = true

    STRING = [MAJOR, MINOR].join('.') + (PRE ? '.pre' : '')
  end
end
