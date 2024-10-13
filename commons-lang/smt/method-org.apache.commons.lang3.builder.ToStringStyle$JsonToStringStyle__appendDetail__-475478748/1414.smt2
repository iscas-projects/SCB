(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1580 0)
(declare-sort var150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-371898945 (Int) String)
(declare-fun appendValueAsString/1526211599 (var1580 String String) void)
(declare-const null-var1580 var1580)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2257 var1580) ; Statement: r0 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle 
(assert (not (= var2257 null-var1580)))
(declare-const var50 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var50 null-String)))
(declare-const var2615 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2615 null-String)))
(declare-const var1741 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var1741 null-Int)))
(define-const var1603 String (String_valueOf/-371898945 var1741)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0) 
(assert true)
;(assert (appendValueAsString/1526211599 var2257 var50 var1603)) ; Statement: specialinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle: void appendValueAsString(java.lang.StringBuffer,java.lang.String)>(r1, $r2) 

(declare-const var2257!1 var1580)
(declare-const var50!1 String)
(declare-const var1603!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-371898945=([char], java.lang.String), appendValueAsString/1526211599=([org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle, java.lang.StringBuffer, java.lang.String], void)}
; {var1580=org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle, var2257=r0, var50=r1, var2615=r3, var150=null_type, var1741=c0, var1603=$r2}
; {org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle=var1580, r0=var2257, r1=var50, r3=var2615, null_type=var150, c0=var1741, $r2=var1603}
;seq <java.lang.String: java.lang.String valueOf(char)>
;cnt {"<java.lang.String: java.lang.String valueOf(char)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle;	r1 := @parameter0: java.lang.StringBuffer;	r3 := @parameter1: java.lang.String;	c0 := @parameter2: char;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>(c0);	specialinvoke r0.<org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle: void appendValueAsString(java.lang.StringBuffer,java.lang.String)>(r1, $r2);	return
;block_num 1