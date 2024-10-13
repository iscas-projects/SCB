(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3588 0)
(declare-sort var2449 0)
(declare-sort var80 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formatToken/-1920232736 (var3588) var2449)
(declare-fun getPrecision/-1119948004 (var2449) Int)
(declare-fun arg/-1920232736 (var3588) var80)
(declare-fun toString/-522406933 (var80) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3588 var3588)
(declare-const null-String String)
(declare-const var3148 var3588) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var3148 null-var3588)))
(declare-const var3277 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3277 null-String)))
(define-const var3472 var2449 (formatToken/-1920232736 var3148)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken> 
(assert true)
(define-const var2316 Int (getPrecision/-1119948004 var3472)) ; Statement: i0 = virtualinvoke $r1.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getPrecision()>() 
(define-const var2339 var80 (arg/-1920232736 var3148)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(assert true)
(define-const var2815 String (toString/-522406933 var2339)) ; Statement: r4 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1054 Bool (contains/1009244746 var2815 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(assert (= (ite var1054 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/672562846 var3277 var2815)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3277!1 String)
(assert (= var3277!1 (str.++ var3277 var2815)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formatToken/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken), getPrecision/-1119948004=([com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken], int), arg/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3588=com.google.javascript.jscomp.base.format.SimpleFormat, var3148=r0, var3277=r3, var2449=com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken, var3472=$r1, var2316=i0, var80=java.lang.Object, var2339=$r2, var2815=r4, var1054=$z0}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var3588, r0=var3148, r3=var3277, com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken=var2449, $r1=var3472, i0=var2316, java.lang.Object=var80, $r2=var2339, r4=var2815, $z0=var1054}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	r3 := @parameter0: java.lang.StringBuilder;	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken formatToken>;	i0 = virtualinvoke $r1.<com.google.javascript.jscomp.base.format.SimpleFormat$FormatToken: int getPrecision()>();	$r2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	r4 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$z0 = virtualinvoke r4.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 == 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	return
;block_num 2