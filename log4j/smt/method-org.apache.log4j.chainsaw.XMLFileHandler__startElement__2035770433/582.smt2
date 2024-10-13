(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3406 0)
(declare-sort var1495 0)
(declare-sort var505 0)
(declare-sort var3060 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mBuf/-631605741 (var3406) String)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun var505_getValue/-1502434038 (var505 String) String)
(declare-fun mThreadName/-631605741 (var3406) String)
(declare-fun Int_parseLong/-436876155 (String) Int)
(declare-fun mTimeStamp/-631605741 (var3406) Int)
(declare-fun mCategoryName/-631605741 (var3406) String)
(declare-fun var3060_toLevel/865599075 (String) var3060)
(declare-fun mLevel/-631605741 (var3406) var3060)
(declare-const null-var3406 var3406)
(declare-const null-String String)
(declare-const null-var505 var505)
(declare-const var1637 var3406) ; Statement: r0 := @this: org.apache.log4j.chainsaw.XMLFileHandler 
(assert (not (= var1637 null-var3406)))
(declare-const var3674 String) ; Statement: r25 := @parameter0: java.lang.String 
(assert (not (= var3674 null-String)))
(declare-const var2346 String) ; Statement: r26 := @parameter1: java.lang.String 
(assert (not (= var2346 null-String)))
(declare-const var3437 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3437 null-String)))
(declare-const var1805 var505) ; Statement: r6 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var1805 null-var505)))
(define-const var2366 String (mBuf/-631605741 var1637)) ; Statement: $r1 = r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.StringBuffer mBuf> 
(assert true)
;(assert (setLength/163251007 var2366 0)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var2366!1 String)
(declare-const var3442 Int)
(define-const var1577 String "log4j:event") ; Statement: $r3 = "log4j:event" 
(assert true)
(define-const var259 Bool (= var1577 var3437)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $r4 = "log4j:locationInfo" 
(assert (not (= (ite var259 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3680 String (var505_getValue/-1502434038 var1805 "thread")) ; Statement: $r20 = interfaceinvoke r6.<org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("thread") 
(declare-const var1637!1 var3406)
(assert (not (= var1637!1 null-var3406)))
(assert (= (mThreadName/-631605741 var1637!1) var3680)) ; Statement: r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.String mThreadName> = $r20 
(define-const var1997 String (var505_getValue/-1502434038 var1805 "timestamp")) ; Statement: $r21 = interfaceinvoke r6.<org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("timestamp") 
(define-const var800 Int (Int_parseLong/-436876155 var1997)) ; Statement: $l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r21) 
(declare-const var1637!2 var3406)
(assert (not (= var1637!2 null-var3406)))
(assert (= (mTimeStamp/-631605741 var1637!2) var800)) ; Statement: r0.<org.apache.log4j.chainsaw.XMLFileHandler: long mTimeStamp> = $l0 
(define-const var3343 String (var505_getValue/-1502434038 var1805 "logger")) ; Statement: $r22 = interfaceinvoke r6.<org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("logger") 
(declare-const var1637!3 var3406)
(assert (not (= var1637!3 null-var3406)))
(assert (= (mCategoryName/-631605741 var1637!3) var3343)) ; Statement: r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.String mCategoryName> = $r22 
(define-const var1241 String (var505_getValue/-1502434038 var1805 "level")) ; Statement: $r23 = interfaceinvoke r6.<org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("level") 
(define-const var1902 var3060 (var3060_toLevel/865599075 var1241)) ; Statement: $r24 = staticinvoke <org.apache.log4j.Level: org.apache.log4j.Level toLevel(java.lang.String)>($r23) 
(declare-const var1637!4 var3406)
(assert (not (= var1637!4 null-var3406)))
(assert (= (mLevel/-631605741 var1637!4) var1902)) ; Statement: r0.<org.apache.log4j.chainsaw.XMLFileHandler: org.apache.log4j.Level mLevel> = $r24 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mBuf/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), var505_getValue/-1502434038=([org.xml.sax.Attributes, java.lang.String], java.lang.String), mThreadName/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], java.lang.String), Int_parseLong/-436876155=([java.lang.String], long), mTimeStamp/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], long), mCategoryName/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], java.lang.String), var3060_toLevel/865599075=([java.lang.String], org.apache.log4j.Level), mLevel/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], org.apache.log4j.Level)}
; {var3406=org.apache.log4j.chainsaw.XMLFileHandler, var1637=r0, var3674=r25, var1495=null_type, var2346=r26, var3437=r2, var505=org.xml.sax.Attributes, var1805=r6, var2366=$r1, var3442=0, var1577=$r3, var259=$z0, var3680=$r20, var1997=$r21, var800=$l0, var3343=$r22, var1241=$r23, var3060=org.apache.log4j.Level, var1902=$r24}
; {org.apache.log4j.chainsaw.XMLFileHandler=var3406, r0=var1637, r25=var3674, null_type=var1495, r26=var2346, r2=var3437, org.xml.sax.Attributes=var505, r6=var1805, $r1=var2366, 0=var3442, $r3=var1577, $z0=var259, $r20=var3680, $r21=var1997, $l0=var800, $r22=var3343, $r23=var1241, org.apache.log4j.Level=var3060, $r24=var1902}
;seq <java.lang.StringBuffer: void setLength(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.log4j.chainsaw.XMLFileHandler;	r25 := @parameter0: java.lang.String;	r26 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r6 := @parameter3: org.xml.sax.Attributes;	$r1 = r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.StringBuffer mBuf>;	virtualinvoke $r1.<java.lang.StringBuffer: void setLength(int)>(0);	$r3 = "log4j:event";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $r4 = "log4j:locationInfo";	$r20 = interfaceinvoke r6.<org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("thread");	r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.String mThreadName> = $r20;	$r21 = interfaceinvoke r6.<org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("timestamp");	$l0 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r21);	r0.<org.apache.log4j.chainsaw.XMLFileHandler: long mTimeStamp> = $l0;	$r22 = interfaceinvoke r6.<org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("logger");	r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.String mCategoryName> = $r22;	$r23 = interfaceinvoke r6.<org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("level");	$r24 = staticinvoke <org.apache.log4j.Level: org.apache.log4j.Level toLevel(java.lang.String)>($r23);	r0.<org.apache.log4j.chainsaw.XMLFileHandler: org.apache.log4j.Level mLevel> = $r24;	goto [?= return];	return
;block_num 3