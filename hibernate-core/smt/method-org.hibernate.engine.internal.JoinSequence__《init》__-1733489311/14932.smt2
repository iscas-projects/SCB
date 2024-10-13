(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var1044 0)
(declare-sort var2199 0)
(declare-sort var1506 0)
(declare-sort var3049 0)
(declare-sort var2315 0)
(declare-sort var3174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2199) void)
(declare-fun cast-from-var2654-to-var2199 (var2654) var2199)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun conditions/-1906196874 (var2654) String)
(declare-fun var1506-init () var1506)
(declare-fun <init>/-325640736 (var1506) void)
(declare-fun cast-from-var1506-to-var3049 (var1506) var3049)
(declare-fun joins/-1906196874 (var2654) var3049)
(declare-fun factory/-1906196874 (var2654) var1044)
(declare-fun var3174_getSessionFactoryOptions/-1909602825 (var3174) var2315)
(declare-fun cast-from-var1044-to-var3174 (var1044) var3174)
(declare-fun var2315_isCollectionJoinSubqueryRewriteEnabled/1183146786 (var2315) Bool)
(declare-fun collectionJoinSubquery/-1906196874 (var2654) Bool)
(declare-const null-var2654 var2654)
(declare-const null-var1044 var1044)
(declare-const var3212 var2654) ; Statement: r0 := @this: org.hibernate.engine.internal.JoinSequence 
(assert (not (= var3212 null-var2654)))
(declare-const var2642 var1044) ; Statement: r3 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2642 null-var1044)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2654-to-var2199 var3212))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3212!1 var2654)
(define-const var2984 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2984)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2984!1 String)
(assert (= var2984!1 ""))
(declare-const var3212!2 var2654)
(assert (not (= var3212!2 null-var2654)))
(assert (= (conditions/-1906196874 var3212!2) var2984!1)) ; Statement: r0.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions> = $r1 
(define-const var1525 var1506 var1506-init) ; Statement: $r2 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1525)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>()>() 

(declare-const var1525!1 var1506)
(declare-const var3212!3 var2654)
(assert (not (= var3212!3 null-var2654)))
(assert (= (joins/-1906196874 var3212!3) (cast-from-var1506-to-var3049 var1525!1))) ; Statement: r0.<org.hibernate.engine.internal.JoinSequence: java.util.List joins> = $r2 
(declare-const var3212!4 var2654)
(assert (not (= var3212!4 null-var2654)))
(assert (= (factory/-1906196874 var3212!4) var2642)) ; Statement: r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.spi.SessionFactoryImplementor factory> = r3 
(define-const var3753 var2315 (var3174_getSessionFactoryOptions/-1909602825 (cast-from-var1044-to-var3174 var2642))) ; Statement: $r4 = interfaceinvoke r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>() 
(define-const var2575 Bool (var2315_isCollectionJoinSubqueryRewriteEnabled/1183146786 var3753)) ; Statement: $z0 = interfaceinvoke $r4.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCollectionJoinSubqueryRewriteEnabled()>() 
(declare-const var3212!5 var2654)
(assert (not (= var3212!5 null-var2654)))
(assert (= (collectionJoinSubquery/-1906196874 var3212!5) var2575)) ; Statement: r0.<org.hibernate.engine.internal.JoinSequence: boolean collectionJoinSubquery> = $z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2654-to-var2199=([org.hibernate.engine.internal.JoinSequence], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), conditions/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.lang.StringBuilder), var1506-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var1506-to-var3049=([java.util.ArrayList], java.util.List), joins/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.util.List), factory/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.spi.SessionFactoryImplementor), var3174_getSessionFactoryOptions/-1909602825=([org.hibernate.SessionFactory], org.hibernate.boot.spi.SessionFactoryOptions), cast-from-var1044-to-var3174=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var2315_isCollectionJoinSubqueryRewriteEnabled/1183146786=([org.hibernate.boot.spi.SessionFactoryOptions], boolean), collectionJoinSubquery/-1906196874=([org.hibernate.engine.internal.JoinSequence], boolean)}
; {var2654=org.hibernate.engine.internal.JoinSequence, var3212=r0, var1044=org.hibernate.engine.spi.SessionFactoryImplementor, var2642=r3, var2199=java.lang.Object, var2984=$r1, var1506=java.util.ArrayList, var1525=$r2, var3049=java.util.List, var2315=org.hibernate.boot.spi.SessionFactoryOptions, var3174=org.hibernate.SessionFactory, var3753=$r4, var2575=$z0}
; {org.hibernate.engine.internal.JoinSequence=var2654, r0=var3212, org.hibernate.engine.spi.SessionFactoryImplementor=var1044, r3=var2642, java.lang.Object=var2199, $r1=var2984, java.util.ArrayList=var1506, $r2=var1525, java.util.List=var3049, org.hibernate.boot.spi.SessionFactoryOptions=var2315, org.hibernate.SessionFactory=var3174, $r4=var3753, $z0=var2575}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.JoinSequence;	r3 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	r0.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions> = $r1;	$r2 = new java.util.ArrayList;	specialinvoke $r2.<java.util.ArrayList: void <init>()>();	r0.<org.hibernate.engine.internal.JoinSequence: java.util.List joins> = $r2;	r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.spi.SessionFactoryImplementor factory> = r3;	$r4 = interfaceinvoke r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.boot.spi.SessionFactoryOptions getSessionFactoryOptions()>();	$z0 = interfaceinvoke $r4.<org.hibernate.boot.spi.SessionFactoryOptions: boolean isCollectionJoinSubqueryRewriteEnabled()>();	r0.<org.hibernate.engine.internal.JoinSequence: boolean collectionJoinSubquery> = $z0;	return
;block_num 1