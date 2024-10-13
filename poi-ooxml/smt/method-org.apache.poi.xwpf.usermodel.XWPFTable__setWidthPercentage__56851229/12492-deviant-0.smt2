(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3634 0)
(declare-sort var1556 0)
(declare-sort var494 0)
(declare-sort var1478 0)
(declare-sort var3671 0)
(declare-sort var2036 0)
(declare-sort var2474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3634_setType/187094882 (var3634 var494) void)
(declare-fun matches/-643015890 (String String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun Float64_parseDouble/1471110886 (String) Float64)
(declare-fun var3671_round/-2009194042 (Float64) Int)
(declare-fun var2036_valueOf/913516287 (Int) var2036)
(declare-fun var3634_setW/1636956788 (var3634 var2474) void)
(declare-fun cast-from-var2036-to-var2474 (var2036) var2474)
(declare-const null-var3634 var3634)
(declare-const null-String String)
(declare-const var1478-PCT var494)
(declare-const var767 var3634) ; Statement: r0 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth 
(assert (not (= var767 null-var3634)))
(declare-const var773 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var773 null-String)))
(define-const var1928 var494 var1478-PCT) ; Statement: $r1 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum PCT> 
;(assert (var3634_setType/187094882 var767 var1928)) ; Statement: interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth: void setType(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum)>($r1) 

(declare-const var767!1 var3634)
(declare-const var1928!1 var494)
(assert true)
(define-const var2215 Bool (matches/-643015890 var773 "[0-9]+(\u005c.[0-9]+)?%")) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+(\\.[0-9]+)?%") 
(assert (= (matches/-643015890 var773 "[0-9]+(\u005c.[0-9]+)?%") (str.in_re var773 (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "%")))))
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+") 
(assert (not (= (ite var2215 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2911 Int (length/-134980193 var773)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2692 Int (- var2911 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var773) var2692) (>= var2692 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3634_setType/187094882=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum], void), matches/-643015890=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), Float64_parseDouble/1471110886=([java.lang.String], double), var3671_round/-2009194042=([double], long), var2036_valueOf/913516287=([long], java.math.BigInteger), var3634_setW/1636956788=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth, java.lang.Object], void), cast-from-var2036-to-var2474=([java.math.BigInteger], java.lang.Object)}
; {var3634=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth, var767=r0, var773=r2, var1556=null_type, var494=org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum, var1478=org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth, var1928=$r1, var2215=$z0, var2911=$i0, var2692=$i1, var3851=r10, var2070=$d0, var853=d1, var3671=java.lang.Math, var833=l2, var2036=java.math.BigInteger, var1062=$r11, var2474=java.lang.Object}
; {org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth=var3634, r0=var767, r2=var773, null_type=var1556, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum=var494, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth=var1478, $r1=var1928, $z0=var2215, $i0=var2911, $i1=var2692, r10=var3851, $d0=var2070, d1=var853, java.lang.Math=var3671, l2=var833, java.math.BigInteger=var2036, $r11=var1062, java.lang.Object=var2474}
;seq <java.lang.String: boolean matches(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean matches(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth;	r2 := @parameter1: java.lang.String;	$r1 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum PCT>;	interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth: void setType(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblWidth$Enum)>($r1);	$z0 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+(\\.[0-9]+)?%");	if $z0 == 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean matches(java.lang.String)>("[0-9]+");	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i1 = $i0 - 1;	r10 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>(r10);	d1 = $d0 * 50.0;	l2 = staticinvoke <java.lang.Math: long round(double)>(d1);	$r11 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l2);	interfaceinvoke r0.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblWidth: void setW(java.lang.Object)>($r11);	goto [?= return];	return
;block_num 3