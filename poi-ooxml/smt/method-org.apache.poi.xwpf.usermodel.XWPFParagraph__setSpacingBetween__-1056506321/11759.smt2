(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3269 0)
(declare-sort var1987 0)
(declare-sort var3868 0)
(declare-sort var3490 0)
(declare-sort var1580 0)
(declare-sort var1240 0)
(declare-sort var1174 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCTSpacing/380425037 (var3269 Bool) var3868)
(declare-fun var3490-init () var3490)
(declare-fun var1580_round/-2009194042 (Float64) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun <init>/-169914562 (var3490 String) void)
(declare-fun var3868_setLine/738819028 (var3868 var1240) void)
(declare-fun cast-from-var3490-to-var1240 (var3490) var1240)
(declare-fun getValue/2060163499 (var1987) Int)
(declare-fun var1174_forInt/1668619468 (Int) var1174)
(declare-fun var3868_setLineRule/1411424354 (var3868 var1174) void)
(declare-const null-var3269 var3269)
(declare-const null-Float64 Float64)
(declare-const null-var1987 var1987)
(declare-const var1987-AUTO var1987)
(declare-const var3305 var3269) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var3305 null-var3269)))
(declare-const var2124 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var2124 null-Float64)))
(declare-const var1050 var1987) ; Statement: r2 := @parameter1: org.apache.poi.xwpf.usermodel.LineSpacingRule 
(assert (not (= var1050 null-var1987)))
(assert true)
(define-const var3002 var3868 (getCTSpacing/380425037 var3305 (ite (= 1 1) true false))) ; Statement: r1 = specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing getCTSpacing(boolean)>(1) 
(define-const var1252 var1987 var1987-AUTO) ; Statement: $r3 = <org.apache.poi.xwpf.usermodel.LineSpacingRule: org.apache.poi.xwpf.usermodel.LineSpacingRule AUTO> 
 ; Statement: if r2 != $r3 goto $r4 = new java.math.BigInteger 
(assert (not (not (= var1050 var1252)))) ; Negate: Cond: r2 != $r3  
(define-const var1674 var3490 var3490-init) ; Statement: $r7 = new java.math.BigInteger 
(define-const var1216 Float64 (fp.mul roundNearestTiesToEven var2124 ((_ to_fp 11 53) #x406e000000000000))) ; Statement: $d2 = d0 * 240.0 
(define-const var2868 Int (var1580_round/-2009194042 var1216)) ; Statement: $l2 = staticinvoke <java.lang.Math: long round(double)>($d2) 
(define-const var2977 String (String_valueOf/-107395227 var2868)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l2) 
(assert true)
;(assert (<init>/-169914562 var1674 var2977)) ; Statement: specialinvoke $r7.<java.math.BigInteger: void <init>(java.lang.String)>($r8) 

(declare-const var1674!1 var3490)
(declare-const var2977!1 String)
;(assert (var3868_setLine/738819028 var3002 (cast-from-var3490-to-var1240 var1674!1))) ; Statement: interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing: void setLine(java.lang.Object)>($r7) 

(declare-const var3002!1 var3868)
(declare-const var1674!2 var3490)
 ; Statement: goto [?= $i1 = virtualinvoke r2.<org.apache.poi.xwpf.usermodel.LineSpacingRule: int getValue()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1016 Int (getValue/2060163499 var1050)) ; Statement: $i1 = virtualinvoke r2.<org.apache.poi.xwpf.usermodel.LineSpacingRule: int getValue()>() 
(define-const var2012 var1174 (var1174_forInt/1668619468 var1016)) ; Statement: $r6 = staticinvoke <org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum: org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum forInt(int)>($i1) 
;(assert (var3868_setLineRule/1411424354 var3002!1 var2012)) ; Statement: interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing: void setLineRule(org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum)>($r6) 

(declare-const var3002!2 var3868)
(declare-const var2012!1 var1174)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCTSpacing/380425037=([org.apache.poi.xwpf.usermodel.XWPFParagraph, boolean], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing), var3490-init=([], java.math.BigInteger), var1580_round/-2009194042=([double], long), String_valueOf/-107395227=([long], java.lang.String), <init>/-169914562=([java.math.BigInteger, java.lang.String], void), var3868_setLine/738819028=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing, java.lang.Object], void), cast-from-var3490-to-var1240=([java.math.BigInteger], java.lang.Object), getValue/2060163499=([org.apache.poi.xwpf.usermodel.LineSpacingRule], int), var1174_forInt/1668619468=([int], org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum), var3868_setLineRule/1411424354=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing, org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum], void)}
; {var3269=org.apache.poi.xwpf.usermodel.XWPFParagraph, var3305=r0, var2124=d0, var1987=org.apache.poi.xwpf.usermodel.LineSpacingRule, var1050=r2, var3868=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing, var3002=r1, var1252=$r3, var3490=java.math.BigInteger, var1674=$r7, var1216=$d2, var1580=java.lang.Math, var2868=$l2, var2977=$r8, var1240=java.lang.Object, var1016=$i1, var1174=org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum, var2012=$r6}
; {org.apache.poi.xwpf.usermodel.XWPFParagraph=var3269, r0=var3305, d0=var2124, org.apache.poi.xwpf.usermodel.LineSpacingRule=var1987, r2=var1050, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing=var3868, r1=var3002, $r3=var1252, java.math.BigInteger=var3490, $r7=var1674, $d2=var1216, java.lang.Math=var1580, $l2=var2868, $r8=var2977, java.lang.Object=var1240, $i1=var1016, org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum=var1174, $r6=var2012}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph;	d0 := @parameter0: double;	r2 := @parameter1: org.apache.poi.xwpf.usermodel.LineSpacingRule;	r1 = specialinvoke r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing getCTSpacing(boolean)>(1);	$r3 = <org.apache.poi.xwpf.usermodel.LineSpacingRule: org.apache.poi.xwpf.usermodel.LineSpacingRule AUTO>;	if r2 != $r3 goto $r4 = new java.math.BigInteger;	$r7 = new java.math.BigInteger;	$d2 = d0 * 240.0;	$l2 = staticinvoke <java.lang.Math: long round(double)>($d2);	$r8 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l2);	specialinvoke $r7.<java.math.BigInteger: void <init>(java.lang.String)>($r8);	interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing: void setLine(java.lang.Object)>($r7);	goto [?= $i1 = virtualinvoke r2.<org.apache.poi.xwpf.usermodel.LineSpacingRule: int getValue()>()];	$i1 = virtualinvoke r2.<org.apache.poi.xwpf.usermodel.LineSpacingRule: int getValue()>();	$r6 = staticinvoke <org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum: org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum forInt(int)>($i1);	interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing: void setLineRule(org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule$Enum)>($r6);	return
;block_num 3