(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3985 0)
(declare-sort var369 0)
(declare-sort var801 0)
(declare-sort var3368 0)
(declare-sort var3358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var801) void)
(declare-fun cast-from-var3985-to-var801 (var3985) var801)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun sql/-1710938057 (var3985) String)
(declare-fun var3368-init () var3368)
(declare-fun <init>/-325640736 (var3368) void)
(declare-fun cast-from-var3368-to-var3358 (var3368) var3358)
(declare-fun paramValues/-1710938057 (var3985) var3358)
(declare-fun wrapper/-1710938057 (var3985) var369)
(declare-const null-var3985 var3985)
(declare-const null-var369 var369)
(declare-const var2772 var3985) ; Statement: r0 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var2772 null-var3985)))
(declare-const var3815 var369) ; Statement: r3 := @parameter0: cn.hutool.db.sql.Wrapper 
(assert (not (= var3815 null-var369)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3985-to-var801 var2772))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2772!1 var3985)
(define-const var2726 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2726)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2726!1 String)
(assert (= var2726!1 ""))
(declare-const var2772!2 var3985)
(assert (not (= var2772!2 null-var3985)))
(assert (= (sql/-1710938057 var2772!2) var2726!1)) ; Statement: r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> = $r1 
(define-const var3259 var3368 var3368-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3259)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var3259!1 var3368)
(declare-const var2772!3 var3985)
(assert (not (= var2772!3 null-var3985)))
(assert (= (paramValues/-1710938057 var2772!3) (cast-from-var3368-to-var3358 var3259!1))) ; Statement: r0.<cn.hutool.db.sql.SqlBuilder: java.util.List paramValues> = $r2 
(declare-const var2772!4 var3985)
(assert (not (= var2772!4 null-var3985)))
(assert (= (wrapper/-1710938057 var2772!4) var3815)) ; Statement: r0.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper> = r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3985-to-var801=([cn.hutool.db.sql.SqlBuilder], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), var3368-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var3368-to-var3358=([java.util.ArrayList], java.util.List), paramValues/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.util.List), wrapper/-1710938057=([cn.hutool.db.sql.SqlBuilder], cn.hutool.db.sql.Wrapper)}
; {var3985=cn.hutool.db.sql.SqlBuilder, var2772=r0, var369=cn.hutool.db.sql.Wrapper, var3815=r3, var801=java.lang.Object, var2726=$r1, var3368=java.util.ArrayList, var3259=$r2, var3358=java.util.List}
; {cn.hutool.db.sql.SqlBuilder=var3985, r0=var2772, cn.hutool.db.sql.Wrapper=var369, r3=var3815, java.lang.Object=var801, $r1=var2726, java.util.ArrayList=var3368, $r2=var3259, java.util.List=var3358}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: cn.hutool.db.sql.SqlBuilder;	r3 := @parameter0: cn.hutool.db.sql.Wrapper;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<cn.hutool.db.sql.SqlBuilder: java.util.List paramValues> = $r2;	r0.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper> = r3;	return
;block_num 1