(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2575 0)
(declare-sort var2213 0)
(declare-sort var3815 0)
(declare-sort var22 0)
(declare-sort var293 0)
(declare-sort var1482 0)
(declare-sort var898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1615724970 (var1482 var898 (Array Int var3815)) void)
(declare-fun cast-from-var2575-to-var1482 (var2575) var1482)
(declare-fun cast-from-var2213-to-var898 (var2213) var898)
(declare-fun buildingContext/-697059323 (var2575) var293)
(declare-fun unique/-697059323 (var2575) Bool)
(declare-fun entityClassName/-697059323 (var2575) String)
(declare-fun path/-697059323 (var2575) String)
(declare-const null-var2575 var2575)
(declare-const null-var2213 var2213)
(declare-const null-__Array__Int__var3815__ (Array Int var3815))
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-var293 var293)
(declare-const var756 var2575) ; Statement: r0 := @this: org.hibernate.cfg.ToOneFkSecondPass 
(assert (not (= var756 null-var2575)))
(declare-const var884 var2213) ; Statement: r1 := @parameter0: org.hibernate.mapping.ToOne 
(assert (not (= var884 null-var2213)))
(declare-const var2476 (Array Int var3815)) ; Statement: r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[] 
(assert (not (= var2476 null-__Array__Int__var3815__)))
(declare-const var771 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var771 null-Bool)))
(declare-const var3705 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var3705 null-String)))
(declare-const var3824 String) ; Statement: r5 := @parameter4: java.lang.String 
(assert (not (= var3824 null-String)))
(declare-const var592 var293) ; Statement: r3 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var592 null-var293)))
(assert true)
;(assert (<init>/-1615724970 (cast-from-var2575-to-var1482 var756) (cast-from-var2213-to-var898 var884) var2476)) ; Statement: specialinvoke r0.<org.hibernate.cfg.FkSecondPass: void <init>(org.hibernate.mapping.SimpleValue,org.hibernate.cfg.Ejb3JoinColumn[])>(r1, r2) 

(declare-const var756!1 var2575)
(declare-const var884!1 var2213)
(declare-const var2476!1 (Array Int var3815))
(declare-const var756!2 var2575)
(assert (not (= var756!2 null-var2575)))
(assert (= (buildingContext/-697059323 var756!2) var592)) ; Statement: r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> = r3 
(declare-const var756!3 var2575)
(assert (not (= var756!3 null-var2575)))
(assert (= (unique/-697059323 var756!3) var771)) ; Statement: r0.<org.hibernate.cfg.ToOneFkSecondPass: boolean unique> = z0 
(declare-const var756!4 var2575)
(assert (not (= var756!4 null-var2575)))
(assert (= (entityClassName/-697059323 var756!4) var3705)) ; Statement: r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String entityClassName> = r4 
 ; Statement: if r4 == null goto $r6 = r5 
(assert (= var3705 null-String)) ; Cond: r4 == null 
(define-const var1051 String var3824) ; Statement: $r6 = r5 
(assert true) ; Non Conditional
(declare-const var756!5 var2575)
(assert (not (= var756!5 null-var2575)))
(assert (= (path/-697059323 var756!5) var1051)) ; Statement: r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1615724970=([org.hibernate.cfg.FkSecondPass, org.hibernate.mapping.SimpleValue, org.hibernate.cfg.Ejb3JoinColumn[]], void), cast-from-var2575-to-var1482=([org.hibernate.cfg.ToOneFkSecondPass], org.hibernate.cfg.FkSecondPass), cast-from-var2213-to-var898=([org.hibernate.mapping.ToOne], org.hibernate.mapping.SimpleValue), buildingContext/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], org.hibernate.boot.spi.MetadataBuildingContext), unique/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], boolean), entityClassName/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], java.lang.String), path/-697059323=([org.hibernate.cfg.ToOneFkSecondPass], java.lang.String)}
; {var2575=org.hibernate.cfg.ToOneFkSecondPass, var756=r0, var2213=org.hibernate.mapping.ToOne, var884=r1, var3815=org.hibernate.cfg.Ejb3JoinColumn, var2476=r2, var771=z0, var3705=r4, var22=null_type, var3824=r5, var293=org.hibernate.boot.spi.MetadataBuildingContext, var592=r3, var1482=org.hibernate.cfg.FkSecondPass, var898=org.hibernate.mapping.SimpleValue, var1051=$r6}
; {org.hibernate.cfg.ToOneFkSecondPass=var2575, r0=var756, org.hibernate.mapping.ToOne=var2213, r1=var884, org.hibernate.cfg.Ejb3JoinColumn=var3815, r2=var2476, z0=var771, r4=var3705, null_type=var22, r5=var3824, org.hibernate.boot.spi.MetadataBuildingContext=var293, r3=var592, org.hibernate.cfg.FkSecondPass=var1482, org.hibernate.mapping.SimpleValue=var898, $r6=var1051}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.cfg.ToOneFkSecondPass;	r1 := @parameter0: org.hibernate.mapping.ToOne;	r2 := @parameter1: org.hibernate.cfg.Ejb3JoinColumn[];	z0 := @parameter2: boolean;	r4 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.String;	r3 := @parameter5: org.hibernate.boot.spi.MetadataBuildingContext;	specialinvoke r0.<org.hibernate.cfg.FkSecondPass: void <init>(org.hibernate.mapping.SimpleValue,org.hibernate.cfg.Ejb3JoinColumn[])>(r1, r2);	r0.<org.hibernate.cfg.ToOneFkSecondPass: org.hibernate.boot.spi.MetadataBuildingContext buildingContext> = r3;	r0.<org.hibernate.cfg.ToOneFkSecondPass: boolean unique> = z0;	r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String entityClassName> = r4;	if r4 == null goto $r6 = r5;	$r6 = r5;	r0.<org.hibernate.cfg.ToOneFkSecondPass: java.lang.String path> = $r6;	return
;block_num 3