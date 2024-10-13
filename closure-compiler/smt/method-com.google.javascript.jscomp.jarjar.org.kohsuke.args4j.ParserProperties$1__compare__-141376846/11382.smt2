(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var692 0)
(declare-sort var2044 0)
(declare-sort var651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun option/338944513 (var2044) var651)
(declare-fun toString/-610864106 (var651) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var692 var692)
(declare-const null-var2044 var2044)
(declare-const var2629 var692) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties$1 
(assert (not (= var2629 null-var692)))
(declare-const var984 var2044) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler 
(assert (not (= var984 null-var2044)))
(declare-const var1036 var2044) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler 
(assert (not (= var1036 null-var2044)))
(define-const var3402 var651 (option/338944513 var984)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option> 
(assert true)
(define-const var3331 String (toString/-610864106 var3402)) ; Statement: $r5 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String toString()>() 
(define-const var2949 var651 (option/338944513 var1036)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option> 
(assert true)
(define-const var254 String (toString/-610864106 var2949)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String toString()>() 
(assert true)
(define-const var3984 Int (compareTo/1411385946 var3331 var254)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4) 
(assert (let ((this<other (str.< var3331 var254)) (this<=other (str.<= var3331 var254)) (compareRes (compareTo/1411385946 var3331 var254))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {option/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef), toString/-610864106=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var692=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties$1, var2629=r6, var2044=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var984=r0, var1036=r2, var651=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef, var3402=$r1, var3331=$r5, var2949=$r3, var254=$r4, var3984=$i0}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties$1=var692, r6=var2629, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var2044, r0=var984, r2=var1036, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef=var651, $r1=var3402, $r5=var3331, $r3=var2949, $r4=var254, $i0=var3984}
;seq <com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String toString()>;	<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String toString()>;	<java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties$1;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option>;	$r5 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String toString()>();	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String toString()>();	$i0 = virtualinvoke $r5.<java.lang.String: int compareTo(java.lang.String)>($r4);	return $i0
;block_num 1