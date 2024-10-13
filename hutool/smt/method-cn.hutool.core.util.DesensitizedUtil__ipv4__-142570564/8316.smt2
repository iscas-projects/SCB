(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2471 0)
(declare-sort var2183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2183_subBefore/-268065833 (String Int Bool) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1368 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1368 null-String)))
(define-const var3960 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3960)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3960!1 String)
(assert (= var3960!1 ""))
(define-const var2720 String (var2183_subBefore/-268065833 (cast-from-String-to-String var1368) 46 (ite (= 1 0) true false))) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBefore(java.lang.CharSequence,char,boolean)>(r1, 46, 0) 
(assert true)
(define-const var1131 String (append/672562846 var3960!1 var2720)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3960!2 String)
(assert (= var3960!2 (str.++ var3960!1 var2720)))
(assert true)
(define-const var2375 String (append/672562846 var1131 ".*.*.*")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".*.*.*") 
(declare-const var1131!1 String)
(assert (= var1131!1 (str.++ var1131 ".*.*.*")))
(assert true)
(define-const var2681 String (toString/-2075883882 var2375)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2183_subBefore/-268065833=([java.lang.CharSequence, char, boolean], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1368=r1, var2471=null_type, var3960=$r0, var2183=cn.hutool.core.text.CharSequenceUtil, var2720=$r2, var1131=$r3, var2375=$r4, var2681=$r5}
; {r1=var1368, null_type=var2471, $r0=var3960, cn.hutool.core.text.CharSequenceUtil=var2183, $r2=var2720, $r3=var1131, $r4=var2375, $r5=var2681}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String subBefore(java.lang.CharSequence,char,boolean)>(r1, 46, 0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".*.*.*");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1