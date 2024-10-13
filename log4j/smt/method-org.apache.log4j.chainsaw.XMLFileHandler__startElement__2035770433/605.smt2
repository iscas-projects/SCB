(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3140 0)
(declare-sort var3968 0)
(declare-sort var3588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mBuf/-631605741 (var3140) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-const null-var3140 var3140)
(declare-const null-String String)
(declare-const null-var3588 var3588)
(declare-const var1562 var3140) ; Statement: r0 := @this: org.apache.log4j.chainsaw.XMLFileHandler 
(assert (not (= var1562 null-var3140)))
(declare-const var3834 String) ; Statement: r25 := @parameter0: java.lang.String 
(assert (not (= var3834 null-String)))
(declare-const var3211 String) ; Statement: r26 := @parameter1: java.lang.String 
(assert (not (= var3211 null-String)))
(declare-const var783 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var783 null-String)))
(declare-const var2167 var3588) ; Statement: r6 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var2167 null-var3588)))
(define-const var2012 String (mBuf/-631605741 var1562)) ; Statement: $r1 = r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.StringBuffer mBuf> 
(assert true)
;(assert (setLength/163251007 var2012 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2012!1 String)
(declare-const var1781 Int)
(define-const var2432 String "log4j:event") ; Statement: $r3 = "log4j:event" 
(assert true)
(define-const var3983 Bool (= var2432 var783)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r4 = "log4j:locationInfo" 
(assert (= (ite var3983 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2258 String "log4j:locationInfo") ; Statement: $r4 = "log4j:locationInfo" 
(assert true)
(define-const var1130 Bool (= var2258 var783)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1130 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mBuf/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void)}
; {var3140=org.apache.log4j.chainsaw.XMLFileHandler, var1562=r0, var3834=r25, var3968=null_type, var3211=r26, var783=r2, var3588=org.xml.sax.Attributes, var2167=r6, var2012=$r1, var1781=0, var2432=$r3, var3983=$z0, var2258=$r4, var1130=$z1}
; {org.apache.log4j.chainsaw.XMLFileHandler=var3140, r0=var1562, r25=var3834, null_type=var3968, r26=var3211, r2=var783, org.xml.sax.Attributes=var3588, r6=var2167, $r1=var2012, 0=var1781, $r3=var2432, $z0=var3983, $r4=var2258, $z1=var1130}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: org.apache.log4j.chainsaw.XMLFileHandler;	r25 := @parameter0: java.lang.String;	r26 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r6 := @parameter3: org.xml.sax.Attributes;	$r1 = r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.StringBuffer mBuf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = "log4j:event";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r4 = "log4j:locationInfo";	$r4 = "log4j:locationInfo";	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z1 == 0 goto return;	return
;block_num 3