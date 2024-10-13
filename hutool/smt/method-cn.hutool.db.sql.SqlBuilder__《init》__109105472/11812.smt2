(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1734 0)
(declare-sort var823 0)
(declare-sort var3756 0)
(declare-sort var231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var823) void)
(declare-fun cast-from-var1734-to-var823 (var1734) var823)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sql/-1710938057 (var1734) String)
(declare-fun var3756-init () var3756)
(declare-fun <init>/-325640736 (var3756) void)
(declare-fun cast-from-var3756-to-var231 (var3756) var231)
(declare-fun paramValues/-1710938057 (var1734) var231)
(declare-const null-var1734 var1734)
(declare-const var596 var1734) ; Statement: r0 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var596 null-var1734)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1734-to-var823 var596))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var596!1 var1734)
(define-const var713 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var713)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var713!1 String)
(assert (= var713!1 ""))
(declare-const var596!2 var1734)
(assert (not (= var596!2 null-var1734)))
(assert (= (sql/-1710938057 var596!2) var713!1)) ; Statement: r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> = $r1 
(define-const var113 var3756 var3756-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var113)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var113!1 var3756)
(declare-const var596!3 var1734)
(assert (not (= var596!3 null-var1734)))
(assert (= (paramValues/-1710938057 var596!3) (cast-from-var3756-to-var231 var113!1))) ; Statement: r0.<cn.hutool.db.sql.SqlBuilder: java.util.List paramValues> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1734-to-var823=([cn.hutool.db.sql.SqlBuilder], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), var3756-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3756-to-var231=([java.util.ArrayList], java.util.List), paramValues/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.util.List)}
; {var1734=cn.hutool.db.sql.SqlBuilder, var596=r0, var823=java.lang.Object, var713=$r1, var3756=java.util.ArrayList, var113=$r2, var231=java.util.List}
; {cn.hutool.db.sql.SqlBuilder=var1734, r0=var596, java.lang.Object=var823, $r1=var713, java.util.ArrayList=var3756, $r2=var113, java.util.List=var231}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlBuilder;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<cn.hutool.db.sql.SqlBuilder: java.util.List paramValues> = $r2;	return
;block_num 1