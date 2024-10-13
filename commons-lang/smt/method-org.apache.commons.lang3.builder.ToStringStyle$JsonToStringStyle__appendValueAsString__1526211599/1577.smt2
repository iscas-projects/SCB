(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3896 0)
(declare-sort var66 0)
(declare-sort var797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/1183289509 (String Int) String)
(declare-fun var797_escapeJson/623543802 (String) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3896 var3896)
(declare-const null-String String)
(declare-const var3710 var3896) ; Statement: r5 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle 
(assert (not (= var3710 null-var3896)))
(declare-const var1977 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1977 null-String)))
(declare-const var174 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var174 null-String)))
(assert true)
(define-const var2362 String (append/1183289509 var1977 34)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34) 
(define-const var1135 String (var797_escapeJson/623543802 var174)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.StringEscapeUtils: java.lang.String escapeJson(java.lang.String)>(r1) 
(assert true)
(define-const var1239 String (append/1560614132 var2362 var1135)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2362!1 String)
(assert (str.prefixof var2362 var2362!1))
(assert true)
;(assert (append/1183289509 var1239 34)) ; Statement: virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34) 

(declare-const var1239!1 String)
(declare-const var713 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), var797_escapeJson/623543802=([java.lang.String], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3896=org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle, var3710=r5, var1977=r0, var174=r1, var66=null_type, var2362=$r3, var797=org.apache.commons.lang3.StringEscapeUtils, var1135=$r2, var1239=$r4, var713=34}
; {org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle=var3896, r5=var3710, r0=var1977, r1=var174, null_type=var66, $r3=var2362, org.apache.commons.lang3.StringEscapeUtils=var797, $r2=var1135, $r4=var1239, 34=var713}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r5 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r1 := @parameter1: java.lang.String;	$r3 = virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34);	$r2 = staticinvoke <org.apache.commons.lang3.StringEscapeUtils: java.lang.String escapeJson(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34);	return
;block_num 1