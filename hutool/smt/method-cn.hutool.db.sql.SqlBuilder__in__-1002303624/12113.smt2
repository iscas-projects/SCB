(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3220 0)
(declare-sort var2427 0)
(declare-sort var2862 0)
(declare-sort var3862 0)
(declare-sort var3093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sql/-1710938057 (var3220) String)
(declare-fun wrapper/-1710938057 (var3220) var3862)
(declare-fun wrap/2127437032 (var3862 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3093_join/481797010 ((Array Int var2862) String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var3220 var3220)
(declare-const null-String String)
(declare-const null-__Array__Int__var2862__ (Array Int var2862))
(declare-const var3686 var3220) ; Statement: r0 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var3686 null-var3220)))
(declare-const var1305 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1305 null-String)))
(declare-const var3840 (Array Int var2862)) ; Statement: r7 := @parameter1: java.lang.Object[] 
(assert (not (= var3840 null-__Array__Int__var2862__)))
(define-const var2835 String (sql/-1710938057 var3686)) ; Statement: $r3 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(define-const var488 var3862 (wrapper/-1710938057 var3686)) ; Statement: $r2 = r0.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper> 
(assert true)
(define-const var3319 String (wrap/2127437032 var488 var1305)) ; Statement: $r4 = virtualinvoke $r2.<cn.hutool.db.sql.Wrapper: java.lang.String wrap(java.lang.String)>(r1) 
(assert true)
(define-const var524 String (append/672562846 var2835 var3319)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2835!1 String)
(assert (= var2835!1 (str.++ var2835 var3319)))
(assert true)
(define-const var1939 String (append/672562846 var524 " IN ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" IN ") 
(declare-const var524!1 String)
(assert (= var524!1 (str.++ var524 " IN ")))
(assert true)
(define-const var3021 String (append/672562846 var1939 "(")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1939!1 String)
(assert (= var1939!1 (str.++ var1939 "(")))
(define-const var2526 String (var3093_join/481797010 var3840 (cast-from-String-to-String ","))) ; Statement: $r8 = staticinvoke <cn.hutool.core.util.ArrayUtil: java.lang.String join(java.lang.Object[],java.lang.CharSequence)>(r7, ",") 
(assert true)
(define-const var1892 String (append/672562846 var3021 var2526)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3021!1 String)
(assert (= var3021!1 (str.++ var3021 var2526)))
(assert true)
;(assert (append/672562846 var1892 ")")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1892!1 String)
(assert (= var1892!1 (str.++ var1892 ")")))
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), wrapper/-1710938057=([cn.hutool.db.sql.SqlBuilder], cn.hutool.db.sql.Wrapper), wrap/2127437032=([cn.hutool.db.sql.Wrapper, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3093_join/481797010=([java.lang.Object[], java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var3220=cn.hutool.db.sql.SqlBuilder, var3686=r0, var1305=r1, var2427=null_type, var2862=java.lang.Object, var3840=r7, var2835=$r3, var3862=cn.hutool.db.sql.Wrapper, var488=$r2, var3319=$r4, var524=$r5, var1939=$r6, var3021=$r9, var3093=cn.hutool.core.util.ArrayUtil, var2526=$r8, var1892=$r10}
; {cn.hutool.db.sql.SqlBuilder=var3220, r0=var3686, r1=var1305, null_type=var2427, java.lang.Object=var2862, r7=var3840, $r3=var2835, cn.hutool.db.sql.Wrapper=var3862, $r2=var488, $r4=var3319, $r5=var524, $r6=var1939, $r9=var3021, cn.hutool.core.util.ArrayUtil=var3093, $r8=var2526, $r10=var1892}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5}
;stmts r0 := @this: cn.hutool.db.sql.SqlBuilder;	r1 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.Object[];	$r3 = r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r2 = r0.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper>;	$r4 = virtualinvoke $r2.<cn.hutool.db.sql.Wrapper: java.lang.String wrap(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" IN ");	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r8 = staticinvoke <cn.hutool.core.util.ArrayUtil: java.lang.String join(java.lang.Object[],java.lang.CharSequence)>(r7, ",");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	return r0
;block_num 1