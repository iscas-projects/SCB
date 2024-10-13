(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2006 0)
(declare-sort var3462 0)
(declare-sort var3167 0)
(declare-sort var3425 0)
(declare-sort var3015 0)
(declare-sort var517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2006-init () var2006)
(declare-fun factory/-1906196874 (var2006) var3462)
(declare-fun <init>/-1733489311 (var2006 var3462) void)
(declare-fun joins/-1906196874 (var2006) var3167)
(declare-fun var3167_addAll/-525367613 (var3167 var3425) Bool)
(declare-fun cast-from-var3167-to-var3425 (var3167) var3425)
(declare-fun useThetaStyle/-1906196874 (var2006) Bool)
(declare-fun rootAlias/-1906196874 (var2006) String)
(declare-fun rootJoinable/-1906196874 (var2006) var3015)
(declare-fun selector/-1906196874 (var2006) var517)
(declare-fun next/-1906196874 (var2006) var2006)
(declare-fun copy/-1310486410 (var2006) var2006)
(declare-fun isFromPart/-1906196874 (var2006) Bool)
(declare-fun conditions/-1906196874 (var2006) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2006 var2006)
(declare-const var953 var2006) ; Statement: r1 := @this: org.hibernate.engine.internal.JoinSequence 
(assert (not (= var953 null-var2006)))
(define-const var3382 var2006 var2006-init) ; Statement: $r0 = new org.hibernate.engine.internal.JoinSequence 
(define-const var3739 var3462 (factory/-1906196874 var953)) ; Statement: $r2 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert true)
;(assert (<init>/-1733489311 var3382 var3739)) ; Statement: specialinvoke $r0.<org.hibernate.engine.internal.JoinSequence: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>($r2) 

(declare-const var3382!1 var2006)
(declare-const var3739!1 var3462)
(define-const var2976 var3167 (joins/-1906196874 var3382!1)) ; Statement: $r4 = $r0.<org.hibernate.engine.internal.JoinSequence: java.util.List joins> 
(define-const var630 var3167 (joins/-1906196874 var953)) ; Statement: $r3 = r1.<org.hibernate.engine.internal.JoinSequence: java.util.List joins> 
;(assert (var3167_addAll/-525367613 var2976 (cast-from-var3167-to-var3425 var630))) ; Statement: interfaceinvoke $r4.<java.util.List: boolean addAll(java.util.Collection)>($r3) 

(declare-const var2976!1 var3167)
(declare-const var630!1 var3167)
(define-const var1686 Bool (useThetaStyle/-1906196874 var953)) ; Statement: $z0 = r1.<org.hibernate.engine.internal.JoinSequence: boolean useThetaStyle> 
(declare-const var3382!2 var2006)
(assert (not (= var3382!2 null-var2006)))
(assert (= (useThetaStyle/-1906196874 var3382!2) var1686)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: boolean useThetaStyle> = $z0 
(define-const var564 String (rootAlias/-1906196874 var953)) ; Statement: $r5 = r1.<org.hibernate.engine.internal.JoinSequence: java.lang.String rootAlias> 
(declare-const var3382!3 var2006)
(assert (not (= var3382!3 null-var2006)))
(assert (= (rootAlias/-1906196874 var3382!3) var564)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: java.lang.String rootAlias> = $r5 
(define-const var3645 var3015 (rootJoinable/-1906196874 var953)) ; Statement: $r6 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable> 
(declare-const var3382!4 var2006)
(assert (not (= var3382!4 null-var2006)))
(assert (= (rootJoinable/-1906196874 var3382!4) var3645)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable> = $r6 
(define-const var2325 var517 (selector/-1906196874 var953)) ; Statement: $r7 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Selector selector> 
(declare-const var3382!5 var2006)
(assert (not (= var3382!5 null-var2006)))
(assert (= (selector/-1906196874 var3382!5) var2325)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Selector selector> = $r7 
(define-const var3159 var2006 (next/-1906196874 var953)) ; Statement: $r8 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> 
 ; Statement: if $r8 != null goto $r9 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> 
(assert (not (= var3159 null-var2006))) ; Cond: $r8 != null 
(define-const var752 var2006 (next/-1906196874 var953)) ; Statement: $r9 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> 
(assert true)
(define-const var3115 var2006 (copy/-1310486410 var752)) ; Statement: $r13 = virtualinvoke $r9.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence copy()>() 
(assert true) ; Non Conditional
(declare-const var3382!6 var2006)
(assert (not (= var3382!6 null-var2006)))
(assert (= (next/-1906196874 var3382!6) var3115)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> = $r13 
(define-const var2745 Bool (isFromPart/-1906196874 var953)) ; Statement: $z1 = r1.<org.hibernate.engine.internal.JoinSequence: boolean isFromPart> 
(declare-const var3382!7 var2006)
(assert (not (= var3382!7 null-var2006)))
(assert (= (isFromPart/-1906196874 var3382!7) var2745)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: boolean isFromPart> = $z1 
(define-const var1432 String (conditions/-1906196874 var3382!7)) ; Statement: $r11 = $r0.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions> 
(define-const var1401 String (conditions/-1906196874 var953)) ; Statement: $r10 = r1.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions> 
(assert true)
(define-const var1795 String (toString/-2075883882 var1401)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var1432 var1795)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1432!1 String)
(assert (= var1432!1 (str.++ var1432 var1795)))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2006-init=([], org.hibernate.engine.internal.JoinSequence), factory/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.spi.SessionFactoryImplementor), <init>/-1733489311=([org.hibernate.engine.internal.JoinSequence, org.hibernate.engine.spi.SessionFactoryImplementor], void), joins/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.util.List), var3167_addAll/-525367613=([java.util.List, java.util.Collection], boolean), cast-from-var3167-to-var3425=([java.util.List], java.util.Collection), useThetaStyle/-1906196874=([org.hibernate.engine.internal.JoinSequence], boolean), rootAlias/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.lang.String), rootJoinable/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.persister.entity.Joinable), selector/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.internal.JoinSequence$Selector), next/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.internal.JoinSequence), copy/-1310486410=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.internal.JoinSequence), isFromPart/-1906196874=([org.hibernate.engine.internal.JoinSequence], boolean), conditions/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2006=org.hibernate.engine.internal.JoinSequence, var953=r1, var3382=$r0, var3462=org.hibernate.engine.spi.SessionFactoryImplementor, var3739=$r2, var3167=java.util.List, var2976=$r4, var630=$r3, var3425=java.util.Collection, var1686=$z0, var564=$r5, var3015=org.hibernate.persister.entity.Joinable, var3645=$r6, var517=org.hibernate.engine.internal.JoinSequence$Selector, var2325=$r7, var3159=$r8, var752=$r9, var3115=$r13, var2745=$z1, var1432=$r11, var1401=$r10, var1795=$r12}
; {org.hibernate.engine.internal.JoinSequence=var2006, r1=var953, $r0=var3382, org.hibernate.engine.spi.SessionFactoryImplementor=var3462, $r2=var3739, java.util.List=var3167, $r4=var2976, $r3=var630, java.util.Collection=var3425, $z0=var1686, $r5=var564, org.hibernate.persister.entity.Joinable=var3015, $r6=var3645, org.hibernate.engine.internal.JoinSequence$Selector=var517, $r7=var2325, $r8=var3159, $r9=var752, $r13=var3115, $z1=var2745, $r11=var1432, $r10=var1401, $r12=var1795}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.engine.internal.JoinSequence;	$r0 = new org.hibernate.engine.internal.JoinSequence;	$r2 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	specialinvoke $r0.<org.hibernate.engine.internal.JoinSequence: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>($r2);	$r4 = $r0.<org.hibernate.engine.internal.JoinSequence: java.util.List joins>;	$r3 = r1.<org.hibernate.engine.internal.JoinSequence: java.util.List joins>;	interfaceinvoke $r4.<java.util.List: boolean addAll(java.util.Collection)>($r3);	$z0 = r1.<org.hibernate.engine.internal.JoinSequence: boolean useThetaStyle>;	$r0.<org.hibernate.engine.internal.JoinSequence: boolean useThetaStyle> = $z0;	$r5 = r1.<org.hibernate.engine.internal.JoinSequence: java.lang.String rootAlias>;	$r0.<org.hibernate.engine.internal.JoinSequence: java.lang.String rootAlias> = $r5;	$r6 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable>;	$r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable> = $r6;	$r7 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Selector selector>;	$r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Selector selector> = $r7;	$r8 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next>;	if $r8 != null goto $r9 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next>;	$r9 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next>;	$r13 = virtualinvoke $r9.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence copy()>();	$r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> = $r13;	$z1 = r1.<org.hibernate.engine.internal.JoinSequence: boolean isFromPart>;	$r0.<org.hibernate.engine.internal.JoinSequence: boolean isFromPart> = $z1;	$r11 = $r0.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions>;	$r10 = r1.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	return $r0
;block_num 3