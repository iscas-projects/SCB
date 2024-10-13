(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3793 0)
(declare-sort var415 0)
(declare-sort var1404 0)
(declare-sort var2988 0)
(declare-sort var1217 0)
(declare-sort var1920 0)
(declare-sort var1210 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCTSpacing/380425037 (var3793 Bool) var1404)
(declare-fun var2988-init () var2988)
(declare-fun var1217_round/-2009194042 (Float64) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun <init>/-169914562 (var2988 String) void)
(declare-fun var1404_setLine/738819028 (var1404 var1920) void)
(declare-fun cast-from-var2988-to-var1920 (var2988) var1920)
(declare-fun getValue/2060163499 (var415) Int)
(declare-fun var1210_forInt/1668619468 (Int) var1210)
(declare-fun var1404_setLineRule/1411424354 (var1404 var1210) void)
(declare-const null-var3793 var3793)
(declare-const null-Float64 Float64)
(declare-const null-var415 var415)
(declare-const var415-AUTO var415)
(declare-const var3209 var3793) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var3209 null-var3793)))
(declare-const var2993 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var2993 null-Float64)))
(declare-const var3593 var415) ; Statement: r2 := @parameter1: org.apache.poi.xwpf.usermodel.LineSpacingRule 
(assert (not (= var3593 null-var415)))
(assert true)
(define-const var3984 var1404 (getCTSpacing/380425037 var3209 (ite (= 1 1) true false))) ; Statement: r1 = specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing getCTSpacing(boolean)>(1) 
(define-const var2445 var415 var415-AUTO) ; Statement: $r3 = <org.apache.poi.xwpf.usermodel.LineSpacingRule: org.apache.poi.xwpf.usermodel.LineSpacingRule AUTO> 
 ; Statement: if r2 != $r3 goto $r4 = new java.math.BigInteger 
(assert (not (= var3593 var2445))) ; Cond: r2 != $r3 
(define-const var696 var2988 var2988-init) ; Statement: $r4 = new java.math.BigInteger 
(define-const var323 Float64 (fp.mul roundNearestTiesToEven var2993 ((_ to_fp 11 53) #x4034000000000000))) ; Statement: $d1 = d0 * 20.0 
(define-const var915 Int (var1217_round/-2009194042 var323)) ; Statement: $l0 = staticinvoke <java.lang.Math: long round(double)>($d1) 
(define-const var456 String (String_valueOf/-107395227 var915)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0) 
(assert true)
;(assert (<init>/-169914562 var696 var456)) ; Statement: specialinvoke $r4.<java.math.BigInteger: void <init>(java.lang.String)>($r5) 

(declare-const var696!1 var2988)
(declare-const var456!1 String)
;(assert (var1404_setLine/738819028 var3984 (cast-from-var2988-to-var1920 var696!1))) ; Statement: interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing: void setLine(java.lang.Object)>($r4) 

(declare-const var3984!1 var1404)
(declare-const var696!2 var2988)
(assert true) ; Non Conditional
(assert true)
(define-const var3057 Int (getValue/2060163499 var3593)) ; Statement: $i1 = virtualinvoke r2.<org.apache.poi.xwpf.usermodel.LineSpacingRule: int getValue()>() 
(define-const var273 var1210 (var1210_forInt/1668619468 var3057)) ; Statement: $r6 = staticinvoke <org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum: org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum forInt(int)>($i1) 
;(assert (var1404_setLineRule/1411424354 var3984!1 var273)) ; Statement: interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing: void setLineRule(org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum)>($r6) 

(declare-const var3984!2 var1404)
(declare-const var273!1 var1210)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCTSpacing/380425037=([org.apache.poi.xwpf.usermodel.XWPFParagraph, boolean], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing), var2988-init=([], java.math.BigInteger), var1217_round/-2009194042=([double], long), String_valueOf/-107395227=([long], java.lang.String), <init>/-169914562=([java.math.BigInteger, java.lang.String], void), var1404_setLine/738819028=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing, java.lang.Object], void), cast-from-var2988-to-var1920=([java.math.BigInteger], java.lang.Object), getValue/2060163499=([org.apache.poi.xwpf.usermodel.LineSpacingRule], int), var1210_forInt/1668619468=([int], org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum), var1404_setLineRule/1411424354=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing, org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum], void)}
; {var3793=org.apache.poi.xwpf.usermodel.XWPFParagraph, var3209=r0, var2993=d0, var415=org.apache.poi.xwpf.usermodel.LineSpacingRule, var3593=r2, var1404=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing, var3984=r1, var2445=$r3, var2988=java.math.BigInteger, var696=$r4, var323=$d1, var1217=java.lang.Math, var915=$l0, var456=$r5, var1920=java.lang.Object, var3057=$i1, var1210=org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum, var273=$r6}
; {org.apache.poi.xwpf.usermodel.XWPFParagraph=var3793, r0=var3209, d0=var2993, org.apache.poi.xwpf.usermodel.LineSpacingRule=var415, r2=var3593, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing=var1404, r1=var3984, $r3=var2445, java.math.BigInteger=var2988, $r4=var696, $d1=var323, java.lang.Math=var1217, $l0=var915, $r5=var456, java.lang.Object=var1920, $i1=var3057, org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum=var1210, $r6=var273}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph;	d0 := @parameter0: double;	r2 := @parameter1: org.apache.poi.xwpf.usermodel.LineSpacingRule;	r1 = specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing getCTSpacing(boolean)>(1);	$r3 = <org.apache.poi.xwpf.usermodel.LineSpacingRule: org.apache.poi.xwpf.usermodel.LineSpacingRule AUTO>;	if r2 != $r3 goto $r4 = new java.math.BigInteger;	$r4 = new java.math.BigInteger;	$d1 = d0 * 20.0;	$l0 = staticinvoke <java.lang.Math: long round(double)>($d1);	$r5 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l0);	specialinvoke $r4.<java.math.BigInteger: void <init>(java.lang.String)>($r5);	interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing: void setLine(java.lang.Object)>($r4);	$i1 = virtualinvoke r2.<org.apache.poi.xwpf.usermodel.LineSpacingRule: int getValue()>();	$r6 = staticinvoke <org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum: org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum forInt(int)>($i1);	interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing: void setLineRule(org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum)>($r6);	return
;block_num 3