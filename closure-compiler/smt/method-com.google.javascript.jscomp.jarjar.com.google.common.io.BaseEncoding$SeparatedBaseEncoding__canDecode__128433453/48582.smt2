(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var518 0)
(declare-sort var755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun String_length/-667254855 (String) Int)
(declare-fun delegate/1519540417 (var518) var755)
(declare-fun canDecode/-692005908 (var755 String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var518 var518)
(declare-const null-String String)
(declare-const var279 var518) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding 
(assert (not (= var279 null-var518)))
(declare-const var985 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var985 null-String)))
(define-const var872 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var872)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var872!1 String)
(assert (= var872!1 ""))
(define-const var3360 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1532 Int (String_length/-667254855 var985)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if i3 >= $i0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate> 
(assert (>= var3360 var1532)) ; Cond: i3 >= $i0 
(define-const var2973 var755 (delegate/1519540417 var279)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate> 
(assert true)
(define-const var3315 Bool (canDecode/-692005908 var2973 (cast-from-String-to-String var872!1))) ; Statement: $z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: boolean canDecode(java.lang.CharSequence)>($r5) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), String_length/-667254855=([java.lang.CharSequence], int), delegate/1519540417=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding), canDecode/-692005908=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.StringBuilder], java.lang.CharSequence)}
; {var518=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding, var279=r2, var985=r1, var872=$r5, var3360=i3, var1532=$i0, var755=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, var2973=$r3, var3315=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding=var518, r2=var279, r1=var985, $r5=var872, i3=var3360, $i0=var1532, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var755, $r3=var2973, $z0=var3315}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.CharSequence: int length()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding;	r1 := @parameter0: java.lang.CharSequence;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	i3 = 0;	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	if i3 >= $i0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate>;	$r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding delegate>;	$z0 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding: boolean canDecode(java.lang.CharSequence)>($r5);	return $z0
;block_num 3