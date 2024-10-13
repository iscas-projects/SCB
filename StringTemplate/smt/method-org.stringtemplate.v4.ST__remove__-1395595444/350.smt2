(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var264 0)
(declare-sort var1366 0)
(declare-sort var657 0)
(declare-sort var3286 0)
(declare-sort var407 0)
(declare-sort var2681 0)
(declare-sort var1860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun impl/55375992 (var264) var657)
(declare-fun formalArguments/1377009226 (var657) var3286)
(declare-fun var3286_get/1088891777 (var3286 var407) var407)
(declare-fun cast-from-String-to-var407 (String) var407)
(declare-fun cast-from-var407-to-var2681 (var407) var2681)
(declare-fun var1860-init () var1860)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1860 String) void)
(declare-const null-var264 var264)
(declare-const null-String String)
(declare-const null-var3286 var3286)
(declare-const null-var2681 var2681)
(declare-const var3330 var264) ; Statement: r0 := @this: org.stringtemplate.v4.ST 
(assert (not (= var3330 null-var264)))
(declare-const var55 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var55 null-String)))
(define-const var1539 var657 (impl/55375992 var3330)) ; Statement: $r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var3571 var3286 (formalArguments/1377009226 var1539)) ; Statement: $r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
 ; Statement: if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(assert (not (= var3571 null-var3286))) ; Cond: $r2 != null 
(define-const var3897 var657 (impl/55375992 var3330)) ; Statement: $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl> 
(define-const var1645 var3286 (formalArguments/1377009226 var3897)) ; Statement: $r5 = $r3.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(define-const var2150 var407 (var3286_get/1088891777 var1645 (cast-from-String-to-var407 var55))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4) 
(define-const var3536 var2681 (cast-from-var407-to-var2681 var2150)) ; Statement: r7 = (org.stringtemplate.v4.compiler.FormalArgument) $r6 
 ; Statement: if r7 != null goto $r9 = r0.<org.stringtemplate.v4.ST: java.lang.Object[] locals> 
(assert (not (not (= var3536 null-var2681)))) ; Negate: Cond: r7 != null  
(define-const var25 var1860 var1860-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var1562 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1562)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1562!1 String)
(assert (= var1562!1 ""))
(assert true)
(define-const var3707 String (append/672562846 var1562!1 "no such attribute: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such attribute: ") 
(declare-const var1562!2 String)
(assert (= var1562!2 (str.++ var1562!1 "no such attribute: ")))
(assert true)
(define-const var2010 String (append/672562846 var3707 var55)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3707!1 String)
(assert (= var3707!1 (str.++ var3707 var55)))
(assert true)
(define-const var532 String (toString/-2075883882 var2010)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var25 var532)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var25!1 var1860)
(declare-const var532!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {impl/55375992=([org.stringtemplate.v4.ST], org.stringtemplate.v4.compiler.CompiledST), formalArguments/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.util.Map), var3286_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var407=([java.lang.String], java.lang.Object), cast-from-var407-to-var2681=([java.lang.Object], org.stringtemplate.v4.compiler.FormalArgument), var1860-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var264=org.stringtemplate.v4.ST, var3330=r0, var55=r4, var1366=null_type, var657=org.stringtemplate.v4.compiler.CompiledST, var1539=$r1, var3286=java.util.Map, var3571=$r2, var3897=$r3, var1645=$r5, var407=java.lang.Object, var2150=$r6, var2681=org.stringtemplate.v4.compiler.FormalArgument, var3536=r7, var1860=java.lang.IllegalArgumentException, var25=$r10, var1562=$r11, var3707=$r12, var2010=$r13, var532=$r14}
; {org.stringtemplate.v4.ST=var264, r0=var3330, r4=var55, null_type=var1366, org.stringtemplate.v4.compiler.CompiledST=var657, $r1=var1539, java.util.Map=var3286, $r2=var3571, $r3=var3897, $r5=var1645, java.lang.Object=var407, $r6=var2150, org.stringtemplate.v4.compiler.FormalArgument=var2681, r7=var3536, java.lang.IllegalArgumentException=var1860, $r10=var25, $r11=var1562, $r12=var3707, $r13=var2010, $r14=var532}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.ST;	r4 := @parameter0: java.lang.String;	$r1 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r2 = $r1.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	if $r2 != null goto $r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r3 = r0.<org.stringtemplate.v4.ST: org.stringtemplate.v4.compiler.CompiledST impl>;	$r5 = $r3.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r6 = interfaceinvoke $r5.<java.util.Map: java.lang.Object get(java.lang.Object)>(r4);	r7 = (org.stringtemplate.v4.compiler.FormalArgument) $r6;	if r7 != null goto $r9 = r0.<org.stringtemplate.v4.ST: java.lang.Object[] locals>;	$r10 = new java.lang.IllegalArgumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no such attribute: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r10
;block_num 3