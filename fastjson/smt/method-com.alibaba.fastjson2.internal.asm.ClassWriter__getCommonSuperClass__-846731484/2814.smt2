(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var982 0)
(declare-sort var3868 0)
(declare-sort var2797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun loadClass/-1289786988 (var982 String) ClassObject)
(declare-fun var2797-init () var2797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2797 String) void)
(declare-const null-var982 var982)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2297 var982) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.ClassWriter 
(assert (not (= var2297 null-var982)))
(declare-const var3057 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3057 null-String)))
(declare-const var659 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var659 null-String)))
(assert true)
(define-const var3318 ClassObject (loadClass/-1289786988 var2297 var3057)) ; Statement: r12 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: java.lang.Class loadClass(java.lang.String)>(r1) 
 ; Statement: if r12 != null goto r3 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: java.lang.Class loadClass(java.lang.String)>(r2) 
(assert (not (not (= var3318 null-ClassObject)))) ; Negate: Cond: r12 != null  
(define-const var1127 var2797 var2797-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1454 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1454)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1454!1 String)
(assert (= var1454!1 ""))
(assert true)
(define-const var1710 String (append/672562846 var1454!1 "class not found ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class not found ") 
(declare-const var1454!2 String)
(assert (= var1454!2 (str.++ var1454!1 "class not found ")))
(assert true)
(define-const var2467 String (append/672562846 var1710 var3057)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1710!1 String)
(assert (= var1710!1 (str.++ var1710 var3057)))
(assert true)
(define-const var3088 String (toString/-2075883882 var2467)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1127 var3088)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var1127!1 var2797)
(declare-const var3088!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {loadClass/-1289786988=([com.alibaba.fastjson2.internal.asm.ClassWriter, java.lang.String], java.lang.Class), var2797-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var982=com.alibaba.fastjson2.internal.asm.ClassWriter, var2297=r0, var3057=r1, var3868=null_type, var659=r2, var3318=r12, var2797=com.alibaba.fastjson2.JSONException, var1127=$r7, var1454=$r8, var1710=$r9, var2467=$r10, var3088=$r11}
; {com.alibaba.fastjson2.internal.asm.ClassWriter=var982, r0=var2297, r1=var3057, null_type=var3868, r2=var659, r12=var3318, com.alibaba.fastjson2.JSONException=var2797, $r7=var1127, $r8=var1454, $r9=var1710, $r10=var2467, $r11=var3088}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.ClassWriter;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r12 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: java.lang.Class loadClass(java.lang.String)>(r1);	if r12 != null goto r3 = virtualinvoke r0.<com.alibaba.fastjson2.internal.asm.ClassWriter: java.lang.Class loadClass(java.lang.String)>(r2);	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("class not found ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2