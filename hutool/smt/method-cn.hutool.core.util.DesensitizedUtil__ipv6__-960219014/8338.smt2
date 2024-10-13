(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3075 0)
(declare-sort var2420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2420_subBefore/-268065833 (String Int Bool) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1180 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1180 null-String)))
(define-const var3957 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3957)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3957!1 String)
(assert (= var3957!1 ""))
(define-const var958 String (var2420_subBefore/-268065833 (cast-from-String-to-String var1180) 58 (ite (= 1 0) true false))) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBefore(java.lang.CharSequence,char,boolean)>(r1, 58, 0) 
(assert true)
(define-const var1341 String (append/672562846 var3957!1 var958)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3957!2 String)
(assert (= var3957!2 (str.++ var3957!1 var958)))
(assert true)
(define-const var2895 String (append/672562846 var1341 ":*:*:*:*:*:*:*")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":*:*:*:*:*:*:*") 
(declare-const var1341!1 String)
(assert (= var1341!1 (str.++ var1341 ":*:*:*:*:*:*:*")))
(assert true)
(define-const var3654 String (toString/-2075883882 var2895)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2420_subBefore/-268065833=([java.lang.CharSequence, char, boolean], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1180=r1, var3075=null_type, var3957=$r0, var2420=cn.hutool.core.text.CharSequenceUtil, var958=$r2, var1341=$r3, var2895=$r4, var3654=$r5}
; {r1=var1180, null_type=var3075, $r0=var3957, cn.hutool.core.text.CharSequenceUtil=var2420, $r2=var958, $r3=var1341, $r4=var2895, $r5=var3654}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBefore(java.lang.CharSequence,char,boolean)>(r1, 58, 0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":*:*:*:*:*:*:*");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1