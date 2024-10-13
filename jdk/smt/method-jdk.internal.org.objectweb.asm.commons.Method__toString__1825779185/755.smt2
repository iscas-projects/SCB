(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1664 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/824703249 (var1664) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun desc/824703249 (var1664) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1664 var1664)
(declare-const var134 var1664) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.Method 
(assert (not (= var134 null-var1664)))
(define-const var368 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var368)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var368!1 String)
(assert (= var368!1 ""))
(define-const var980 String (name/824703249 var134)) ; Statement: $r2 = r1.<jdk.internal.org.objectweb.asm.commons.Method: java.lang.String name> 
(assert true)
(define-const var3091 String (append/672562846 var368!1 var980)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var368!2 String)
(assert (= var368!2 (str.++ var368!1 var980)))
(define-const var3187 String (desc/824703249 var134)) ; Statement: $r3 = r1.<jdk.internal.org.objectweb.asm.commons.Method: java.lang.String desc> 
(assert true)
(define-const var1496 String (append/672562846 var3091 var3187)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3091!1 String)
(assert (= var3091!1 (str.++ var3091 var3187)))
(assert true)
(define-const var853 String (toString/-2075883882 var1496)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/824703249=([jdk.internal.org.objectweb.asm.commons.Method], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), desc/824703249=([jdk.internal.org.objectweb.asm.commons.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1664=jdk.internal.org.objectweb.asm.commons.Method, var134=r1, var368=$r0, var980=$r2, var3091=$r4, var3187=$r3, var1496=$r5, var853=$r6}
; {jdk.internal.org.objectweb.asm.commons.Method=var1664, r1=var134, $r0=var368, $r2=var980, $r4=var3091, $r3=var3187, $r5=var1496, $r6=var853}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.Method;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<jdk.internal.org.objectweb.asm.commons.Method: java.lang.String name>;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<jdk.internal.org.objectweb.asm.commons.Method: java.lang.String desc>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1