(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var74 0)
(declare-sort var2652 0)
(declare-sort var3705 0)
(declare-sort var1555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-978839151 (var74) var3705)
(declare-fun isPlaceHolder/-884051105 (var74) Bool)
(declare-fun arr-var3705-init () (Array Int var3705))
(declare-fun var1555_join/-1128082923 (String (Array Int var3705)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var74 var74)
(declare-const null-String String)
(declare-const null-var2652 var2652)
(declare-const null-__Array__Int__var3705__ (Array Int var3705))
(declare-const var1539 var74) ; Statement: r1 := @this: cn.hutool.db.sql.Condition 
(assert (not (= var1539 null-var74)))
(declare-const var3276 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3276 null-String)))
(declare-const var3107 var2652) ; Statement: r7 := @parameter1: java.util.List 
(assert (not (= var3107 null-var2652)))
(assert true)
;(assert (append/672562846 var3276 " (")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3276!1 String)
(assert (= var3276!1 (str.++ var3276 " (")))
(define-const var1507 var3705 (value/-978839151 var1539)) ; Statement: r2 = r1.<cn.hutool.db.sql.Condition: java.lang.Object value> 
(assert true)
(define-const var2616 Bool (isPlaceHolder/-884051105 var1539)) ; Statement: $z0 = virtualinvoke r1.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>() 
 ; Statement: if $z0 == 0 goto $r3 = newarray (java.lang.Object)[1] 
(assert (= (ite var2616 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2195 (Array Int var3705) arr-var3705-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var2195!1 (Array Int var3705))
(assert (not (= var2195!1 null-__Array__Int__var3705__)))
(assert (= (select var2195!1 0) var1507)) ; Statement: $r3[0] = r2 
(define-const var1102 String (var1555_join/-1128082923 (cast-from-String-to-String ",") var2195!1)) ; Statement: $r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String join(java.lang.CharSequence,java.lang.Object[])>(",", $r3) 
(assert true)
;(assert (append/672562846 var3276!1 var1102)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3276!2 String)
(assert (= var3276!2 (str.++ var3276!1 var1102)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3276!2 41)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3276!3 String)
(assert (str.prefixof var3276!2 var3276!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-978839151=([cn.hutool.db.sql.Condition], java.lang.Object), isPlaceHolder/-884051105=([cn.hutool.db.sql.Condition], boolean), arr-var3705-init=([], java.lang.Object[]), var1555_join/-1128082923=([java.lang.CharSequence, java.lang.Object[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var74=cn.hutool.db.sql.Condition, var1539=r1, var3276=r0, var2652=java.util.List, var3107=r7, var3705=java.lang.Object, var1507=r2, var2616=$z0, var2195=$r3, var1555=cn.hutool.core.text.CharSequenceUtil, var1102=$r4}
; {cn.hutool.db.sql.Condition=var74, r1=var1539, r0=var3276, java.util.List=var2652, r7=var3107, java.lang.Object=var3705, r2=var1507, $z0=var2616, $r3=var2195, cn.hutool.core.text.CharSequenceUtil=var1555, $r4=var1102}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: cn.hutool.db.sql.Condition;	r0 := @parameter0: java.lang.StringBuilder;	r7 := @parameter1: java.util.List;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	r2 = r1.<cn.hutool.db.sql.Condition: java.lang.Object value>;	$z0 = virtualinvoke r1.<cn.hutool.db.sql.Condition: boolean isPlaceHolder()>();	if $z0 == 0 goto $r3 = newarray (java.lang.Object)[1];	$r3 = newarray (java.lang.Object)[1];	$r3[0] = r2;	$r4 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.String join(java.lang.CharSequence,java.lang.Object[])>(",", $r3);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return
;block_num 3