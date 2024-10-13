(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1646 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1646 var1646)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var422 var1646) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum 
(assert (not (= var422 null-var1646)))
(declare-const var3000 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3000 null-__Array__Int__Int__)))
(define-const var908 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var908)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var908!1 String)
(assert (= var908!1 ""))
(define-const var725 Int (getLength-Arr-Int-1 var3000)) ; Statement: i0 = lengthof r1 
(define-const var2507 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2507 var725)) ; Cond: i3 >= i0 
(assert true)
(define-const var1461 String (toString/-2075883882 var908!1)) ; Statement: $r2 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1646=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum, var422=r6, var3000=r1, var908=$r7, var725=i0, var2507=i3, var1461=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum=var1646, r6=var422, r1=var3000, $r7=var908, i0=var725, i3=var2507, $r2=var1461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Checksum;	r1 := @parameter0: byte[];	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i3 = 0;	if i3 >= i0 goto $r2 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3