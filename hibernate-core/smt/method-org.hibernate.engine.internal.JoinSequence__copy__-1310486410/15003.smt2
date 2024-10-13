(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1887 0)
(declare-sort var896 0)
(declare-sort var450 0)
(declare-sort var315 0)
(declare-sort var2183 0)
(declare-sort var287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1887-init () var1887)
(declare-fun factory/-1906196874 (var1887) var896)
(declare-fun <init>/-1733489311 (var1887 var896) void)
(declare-fun joins/-1906196874 (var1887) var450)
(declare-fun var450_addAll/-525367613 (var450 var315) Bool)
(declare-fun cast-from-var450-to-var315 (var450) var315)
(declare-fun useThetaStyle/-1906196874 (var1887) Bool)
(declare-fun rootAlias/-1906196874 (var1887) String)
(declare-fun rootJoinable/-1906196874 (var1887) var2183)
(declare-fun selector/-1906196874 (var1887) var287)
(declare-fun next/-1906196874 (var1887) var1887)
(declare-fun isFromPart/-1906196874 (var1887) Bool)
(declare-fun conditions/-1906196874 (var1887) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1887 var1887)
(declare-const var912 var1887) ; Statement: r1 := @this: org.hibernate.engine.internal.JoinSequence 
(assert (not (= var912 null-var1887)))
(define-const var2596 var1887 var1887-init) ; Statement: $r0 = new org.hibernate.engine.internal.JoinSequence 
(define-const var3423 var896 (factory/-1906196874 var912)) ; Statement: $r2 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.spi.SessionFactoryImplementor factory> 
(assert true)
;(assert (<init>/-1733489311 var2596 var3423)) ; Statement: specialinvoke $r0.<org.hibernate.engine.internal.JoinSequence: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>($r2) 

(declare-const var2596!1 var1887)
(declare-const var3423!1 var896)
(define-const var3709 var450 (joins/-1906196874 var2596!1)) ; Statement: $r4 = $r0.<org.hibernate.engine.internal.JoinSequence: java.util.List joins> 
(define-const var1131 var450 (joins/-1906196874 var912)) ; Statement: $r3 = r1.<org.hibernate.engine.internal.JoinSequence: java.util.List joins> 
;(assert (var450_addAll/-525367613 var3709 (cast-from-var450-to-var315 var1131))) ; Statement: interfaceinvoke $r4.<java.util.List: boolean addAll(java.util.Collection)>($r3) 

(declare-const var3709!1 var450)
(declare-const var1131!1 var450)
(define-const var208 Bool (useThetaStyle/-1906196874 var912)) ; Statement: $z0 = r1.<org.hibernate.engine.internal.JoinSequence: boolean useThetaStyle> 
(declare-const var2596!2 var1887)
(assert (not (= var2596!2 null-var1887)))
(assert (= (useThetaStyle/-1906196874 var2596!2) var208)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: boolean useThetaStyle> = $z0 
(define-const var3787 String (rootAlias/-1906196874 var912)) ; Statement: $r5 = r1.<org.hibernate.engine.internal.JoinSequence: java.lang.String rootAlias> 
(declare-const var2596!3 var1887)
(assert (not (= var2596!3 null-var1887)))
(assert (= (rootAlias/-1906196874 var2596!3) var3787)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: java.lang.String rootAlias> = $r5 
(define-const var761 var2183 (rootJoinable/-1906196874 var912)) ; Statement: $r6 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable> 
(declare-const var2596!4 var1887)
(assert (not (= var2596!4 null-var1887)))
(assert (= (rootJoinable/-1906196874 var2596!4) var761)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable> = $r6 
(define-const var3037 var287 (selector/-1906196874 var912)) ; Statement: $r7 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Selector selector> 
(declare-const var2596!5 var1887)
(assert (not (= var2596!5 null-var1887)))
(assert (= (selector/-1906196874 var2596!5) var3037)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Selector selector> = $r7 
(define-const var2836 var1887 (next/-1906196874 var912)) ; Statement: $r8 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> 
 ; Statement: if $r8 != null goto $r9 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> 
(assert (not (not (= var2836 null-var1887)))) ; Negate: Cond: $r8 != null  
(define-const var1439 var1887 null-var1887) ; Statement: $r13 = null 
 ; Statement: goto [?= $r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> = $r13] 
(assert true) ; Non Conditional
(declare-const var2596!6 var1887)
(assert (not (= var2596!6 null-var1887)))
(assert (= (next/-1906196874 var2596!6) var1439)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> = $r13 
(define-const var279 Bool (isFromPart/-1906196874 var912)) ; Statement: $z1 = r1.<org.hibernate.engine.internal.JoinSequence: boolean isFromPart> 
(declare-const var2596!7 var1887)
(assert (not (= var2596!7 null-var1887)))
(assert (= (isFromPart/-1906196874 var2596!7) var279)) ; Statement: $r0.<org.hibernate.engine.internal.JoinSequence: boolean isFromPart> = $z1 
(define-const var2820 String (conditions/-1906196874 var2596!7)) ; Statement: $r11 = $r0.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions> 
(define-const var3194 String (conditions/-1906196874 var912)) ; Statement: $r10 = r1.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions> 
(assert true)
(define-const var2326 String (toString/-2075883882 var3194)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2820 var2326)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2820!1 String)
(assert (= var2820!1 (str.++ var2820 var2326)))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1887-init=([], org.hibernate.engine.internal.JoinSequence), factory/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.spi.SessionFactoryImplementor), <init>/-1733489311=([org.hibernate.engine.internal.JoinSequence, org.hibernate.engine.spi.SessionFactoryImplementor], void), joins/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.util.List), var450_addAll/-525367613=([java.util.List, java.util.Collection], boolean), cast-from-var450-to-var315=([java.util.List], java.util.Collection), useThetaStyle/-1906196874=([org.hibernate.engine.internal.JoinSequence], boolean), rootAlias/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.lang.String), rootJoinable/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.persister.entity.Joinable), selector/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.internal.JoinSequence$Selector), next/-1906196874=([org.hibernate.engine.internal.JoinSequence], org.hibernate.engine.internal.JoinSequence), isFromPart/-1906196874=([org.hibernate.engine.internal.JoinSequence], boolean), conditions/-1906196874=([org.hibernate.engine.internal.JoinSequence], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1887=org.hibernate.engine.internal.JoinSequence, var912=r1, var2596=$r0, var896=org.hibernate.engine.spi.SessionFactoryImplementor, var3423=$r2, var450=java.util.List, var3709=$r4, var1131=$r3, var315=java.util.Collection, var208=$z0, var3787=$r5, var2183=org.hibernate.persister.entity.Joinable, var761=$r6, var287=org.hibernate.engine.internal.JoinSequence$Selector, var3037=$r7, var2836=$r8, var1439=$r13, var279=$z1, var2820=$r11, var3194=$r10, var2326=$r12}
; {org.hibernate.engine.internal.JoinSequence=var1887, r1=var912, $r0=var2596, org.hibernate.engine.spi.SessionFactoryImplementor=var896, $r2=var3423, java.util.List=var450, $r4=var3709, $r3=var1131, java.util.Collection=var315, $z0=var208, $r5=var3787, org.hibernate.persister.entity.Joinable=var2183, $r6=var761, org.hibernate.engine.internal.JoinSequence$Selector=var287, $r7=var3037, $r8=var2836, $r13=var1439, $z1=var279, $r11=var2820, $r10=var3194, $r12=var2326}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.engine.internal.JoinSequence;	$r0 = new org.hibernate.engine.internal.JoinSequence;	$r2 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.spi.SessionFactoryImplementor factory>;	specialinvoke $r0.<org.hibernate.engine.internal.JoinSequence: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor)>($r2);	$r4 = $r0.<org.hibernate.engine.internal.JoinSequence: java.util.List joins>;	$r3 = r1.<org.hibernate.engine.internal.JoinSequence: java.util.List joins>;	interfaceinvoke $r4.<java.util.List: boolean addAll(java.util.Collection)>($r3);	$z0 = r1.<org.hibernate.engine.internal.JoinSequence: boolean useThetaStyle>;	$r0.<org.hibernate.engine.internal.JoinSequence: boolean useThetaStyle> = $z0;	$r5 = r1.<org.hibernate.engine.internal.JoinSequence: java.lang.String rootAlias>;	$r0.<org.hibernate.engine.internal.JoinSequence: java.lang.String rootAlias> = $r5;	$r6 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable>;	$r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.persister.entity.Joinable rootJoinable> = $r6;	$r7 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Selector selector>;	$r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence$Selector selector> = $r7;	$r8 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next>;	if $r8 != null goto $r9 = r1.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next>;	$r13 = null;	goto [?= $r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> = $r13];	$r0.<org.hibernate.engine.internal.JoinSequence: org.hibernate.engine.internal.JoinSequence next> = $r13;	$z1 = r1.<org.hibernate.engine.internal.JoinSequence: boolean isFromPart>;	$r0.<org.hibernate.engine.internal.JoinSequence: boolean isFromPart> = $z1;	$r11 = $r0.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions>;	$r10 = r1.<org.hibernate.engine.internal.JoinSequence: java.lang.StringBuilder conditions>;	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	return $r0
;block_num 3