(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3369 0)
(declare-sort var426 0)
(declare-sort var2170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var2170_builder/-1725539764 ((Array Int String)) String)
(declare-fun var2170_isNotBlank/-658997806 (String) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var426 var426)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var287 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var287 null-String)))
(declare-const var1373 var426) ; Statement: r3 := @parameter1: java.nio.charset.Charset 
(assert (not (= var1373 null-var426)))
(declare-const var658 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var658 null-String)))
(declare-const var3873 String) ; Statement: r5 := @parameter3: java.lang.String 
(assert (not (= var3873 null-String)))
(define-const var3687 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.CharSequence)[1] 
(declare-const var3687!1 (Array Int String))
(assert (not (= var3687!1 null-__Array__Int__String__)))
(assert (= (select var3687!1 0) (cast-from-String-to-String "data:"))) ; Statement: $r0[0] = "data:" 
(define-const var2848 String (var2170_builder/-1725539764 var3687!1)) ; Statement: r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(java.lang.CharSequence[])>($r0) 
(define-const var3599 Bool (var2170_isNotBlank/-658997806 (cast-from-String-to-String var287))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r2) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3599 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if null == r3 goto $z1 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r4) 
(assert (= null-var426 var1373)) ; Cond: null == r3 
(define-const var3533 Bool (var2170_isNotBlank/-658997806 (cast-from-String-to-String var658))) ; Statement: $z1 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r4) 
 ; Statement: if $z1 == 0 goto $r6 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(assert (= (ite var3533 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var556 String (append/-1166366385 var2848 44)) ; Statement: $r6 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44) 
(declare-const var2848!1 String)
(assert (str.prefixof var2848 var2848!1))
(assert true)
;(assert (append/672562846 var556 var3873)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var556!1 String)
(assert (= var556!1 (str.++ var556 var3873)))
(assert true)
(define-const var2896 String (toString/-2075883882 var2848!1)) ; Statement: $r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.CharSequence[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var2170_builder/-1725539764=([java.lang.CharSequence[]], java.lang.StringBuilder), var2170_isNotBlank/-658997806=([java.lang.CharSequence], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var287=r2, var3369=null_type, var426=java.nio.charset.Charset, var1373=r3, var658=r4, var3873=r5, var3687=$r0, var2170=cn.hutool.core.text.CharSequenceUtil, var2848=r1, var3599=$z0, var3533=$z1, var556=$r6, var2896=$r7}
; {r2=var287, null_type=var3369, java.nio.charset.Charset=var426, r3=var1373, r4=var658, r5=var3873, $r0=var3687, cn.hutool.core.text.CharSequenceUtil=var2170, r1=var2848, $z0=var3599, $z1=var3533, $r6=var556, $r7=var2896}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.nio.charset.Charset;	r4 := @parameter2: java.lang.String;	r5 := @parameter3: java.lang.String;	$r0 = newarray (java.lang.CharSequence)[1];	$r0[0] = "data:";	r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(java.lang.CharSequence[])>($r0);	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r2);	if $z0 == 0 goto (branch);	if null == r3 goto $z1 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r4);	$z1 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r4);	if $z1 == 0 goto $r6 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	$r6 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(44);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r7 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4