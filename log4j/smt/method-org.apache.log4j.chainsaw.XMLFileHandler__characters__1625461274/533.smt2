(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mBuf/-631605741 (var2042) String)
(declare-fun String_valueOf/1604192167 ((Array Int Int) Int Int) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2042 var2042)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2942 var2042) ; Statement: r0 := @this: org.apache.log4j.chainsaw.XMLFileHandler 
(assert (not (= var2942 null-var2042)))
(declare-const var573 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var573 null-__Array__Int__Int__)))
(declare-const var3196 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3196 null-Int)))
(declare-const var3801 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3801 null-Int)))
(define-const var3291 String (mBuf/-631605741 var2942)) ; Statement: $r2 = r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.StringBuffer mBuf> 
(define-const var3843 String (String_valueOf/1604192167 var573 var3196 var3801)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[],int,int)>(r1, i0, i1) 
(assert true)
;(assert (append/1560614132 var3291 var3843)) ; Statement: virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3291!1 String)
(assert (str.prefixof var3291 var3291!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mBuf/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], java.lang.StringBuffer), String_valueOf/1604192167=([char[], int, int], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2042=org.apache.log4j.chainsaw.XMLFileHandler, var2942=r0, var573=r1, var3196=i0, var3801=i1, var3291=$r2, var3843=$r3}
; {org.apache.log4j.chainsaw.XMLFileHandler=var2042, r0=var2942, r1=var573, i0=var3196, i1=var3801, $r2=var3291, $r3=var3843}
;seq <java.lang.String: java.lang.String valueOf(char[],int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String valueOf(char[],int,int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.log4j.chainsaw.XMLFileHandler;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.StringBuffer mBuf>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[],int,int)>(r1, i0, i1);	virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return
;block_num 1