(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2657 0)
(declare-sort var2763 0)
(declare-sort var2614 0)
(declare-sort var2743 0)
(declare-sort var1243 0)
(declare-sort var2954 0)
(declare-sort var2572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1615724970 (var2954 var2572 (Array Int var2614)) void)
(declare-fun cast-from-var2657-to-var2954 (var2657) var2954)
(declare-fun cast-from-var2763-to-var2572 (var2763) var2572)
(declare-fun buildingContext/-697059323 (var2657) var1243)
(declare-fun unique/-697059323 (var2657) Bool)
(declare-fun entityClassName/-697059323 (var2657) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun path/-697059323 (var2657) String)
(declare-const null-var2657 var2657)
(declare-const null-var2763 var2763)
(declare-const null-__Array__Int__var2614__ (Array Int var2614))
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-var1243 var1243)
(declare-const var2098 var2657) ; Statement: r0 := @this: org.hibernate.cfg.ToOneFkSecondPass 
(assert (not (= var2098 null-var2657)))
(declare-const var1929 var2763) ; Statement: r1 := @parameter0: org.hibernate.mapping.ToOne 
(assert (not (= var1929 null-var2763)))
(declare-const var1743 (Array Int var2614)) ; Statement: r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[] 
(assert (not (= var1743 null-__Array__Int__var2614__)))
(declare-const var3113 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3113 null-Bool)))
(declare-const var1952 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var1952 null-String)))
(declare-const var3850 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var3850 null-String)))
(declare-const var1606 var1243) ; Statement: r3 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1606 null-var1243)))
(assert true)
;(assert (<init>/-1615724970 (cast-from-var2657-to-var2954 var2098) (cast-from-var2763-to-var2572 var1929) var1743)) ; Statement: specialinvoke r0.<org.hibernate.cfg.FkSecondPass: void <init>(org.hibernate.mapping.SimpleValue,org.hibernate.cfg.Ejb3JoinColumn[])>(r1, r2) 

(declare-const var2098!1 var2657)
(declare-const var1929!1 var2763)
(declare-const var1743!1 (Array Int var2614))
(declare-const var2098!2 var2657)
(assert (not (= var2098!2 null-var2657)))
(assert (= (buildingContext/-697059323 var2098!2) var1606)) ; Statement: r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> = r3 
(declare-const var2098!3 var2657)
(assert (not (= var2098!3 null-var2657)))
(assert (= (unique/-697059323 var2098!3) var3113)) ; Statement: r0.<org.hibernate.cfg.ToOneFkSecondPass: boolean unique> = z0 
(declare-const var2098!4 var2657)
(assert (not (= var2098!4 null-var2657)))
(assert (= (entityClassName/-697059323 var2098!4) var1952)) ; Statement: r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String entityClassName> = r4 
 ; Statement: if r4 == null goto $r6 = r5 
(assert (not (= var1952 null-String))) ; Negate: Cond: r4 == null  
(assert true)
(define-const var3661 Int (length/-134980193 var1952)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var2756 Int (+ var3661 1)) ; Statement: $i1 = $i0 + 1 
(assert (and true (and (>= var2756 0) (>= (str.len var3850) var2756))))
(define-const var2391 String (substring/850833817 var3850 var2756)) ; Statement: $r6 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int)>($i1) 
 ; Statement: goto [?= r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path> = $r6] 
(assert true) ; Non Conditional
(declare-const var2098!5 var2657)
(assert (not (= var2098!5 null-var2657)))
(assert (= (path/-697059323 var2098!5) var2391)) ; Statement: r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1615724970=([org.hibernate.cfg.FkSecondPass, org.hibernate.mapping.SimpleValue, org.hibernate.cfg.Ejb3JoinColumn[]], void), cast-from-var2657-to-var2954=([org.hibernate.cfg.ToOneFkSecondPass], org.hibernate.cfg.FkSecondPass), cast-from-var2763-to-var2572=([org.hibernate.mapping.ToOne], org.hibernate.mapping.SimpleValue), buildingContext/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], org.hibernate.boot.spi.MetadataBuildingContext), unique/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], boolean), entityClassName/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], java.lang.String), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), path/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], java.lang.String)}
; {var2657=org.hibernate.cfg.ToOneFkSecondPass, var2098=r0, var2763=org.hibernate.mapping.ToOne, var1929=r1, var2614=org.hibernate.cfg.Ejb3JoinColumn, var1743=r2, var3113=z0, var1952=r4, var2743=null_type, var3850=r5, var1243=org.hibernate.boot.spi.MetadataBuildingContext, var1606=r3, var2954=org.hibernate.cfg.FkSecondPass, var2572=org.hibernate.mapping.SimpleValue, var3661=$i0, var2756=$i1, var2391=$r6}
; {org.hibernate.cfg.ToOneFkSecondPass=var2657, r0=var2098, org.hibernate.mapping.ToOne=var2763, r1=var1929, org.hibernate.cfg.Ejb3JoinColumn=var2614, r2=var1743, z0=var3113, r4=var1952, null_type=var2743, r5=var3850, org.hibernate.boot.spi.MetadataBuildingContext=var1243, r3=var1606, org.hibernate.cfg.FkSecondPass=var2954, org.hibernate.mapping.SimpleValue=var2572, $i0=var3661, $i1=var2756, $r6=var2391}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.hibernate.cfg.ToOneFkSecondPass;	r1 := @parameter0: org.hibernate.mapping.ToOne;	r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[];	z0 := @parameter2: boolean;	r4 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.String;	r3 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext;	specialinvoke r0.<org.hibernate.cfg.FkSecondPass: void <init>(org.hibernate.mapping.SimpleValue,org.hibernate.cfg.Ejb3JoinColumn[])>(r1, r2);	r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> = r3;	r0.<org.hibernate.cfg.ToOneFkSecondPass: boolean unique> = z0;	r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String entityClassName> = r4;	if r4 == null goto $r6 = r5;	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$i1 = $i0 + 1;	$r6 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int)>($i1);	goto [?= r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path> = $r6];	r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path> = $r6;	return
;block_num 3