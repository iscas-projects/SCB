(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var424 var424)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var782 var424) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler 
(assert (not (= var782 null-var424)))
(declare-const var209 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var209 null-__Array__Int__Int__)))
(define-const var890 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var890)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var890!1 String)
(assert (= var890!1 ""))
(define-const var1396 Int (getLength-Arr-Int-1 var209)) ; Statement: i0 = lengthof r1 
(define-const var3302 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3302 var1396)) ; Cond: i4 >= i0 
(assert true)
(define-const var3335 String (toString/-2075883882 var890!1)) ; Statement: $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var424=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler, var782=r4, var209=r1, var890=$r5, var1396=i0, var3302=i4, var3335=$r2}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler=var424, r4=var782, r1=var209, $r5=var890, i0=var1396, i4=var3302, $r2=var3335}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.MacAddressOptionHandler;	r1 := @parameter0: byte[];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i4 = 0;	if i4 >= i0 goto $r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3