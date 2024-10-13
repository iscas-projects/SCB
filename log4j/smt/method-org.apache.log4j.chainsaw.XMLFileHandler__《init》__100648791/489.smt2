(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1555 0)
(declare-sort var3628 0)
(declare-sort var3921 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1727464312 (var3921) void)
(declare-fun cast-from-var1555-to-var3921 (var1555) var3921)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun mBuf/-631605741 (var1555) String)
(declare-fun mModel/-631605741 (var1555) var3628)
(declare-const null-var1555 var1555)
(declare-const null-var3628 var3628)
(declare-const var1712 var1555) ; Statement: r0 := @this: org.apache.log4j.chainsaw.XMLFileHandler 
(assert (not (= var1712 null-var1555)))
(declare-const var2135 var3628) ; Statement: r2 := @parameter0: org.apache.log4j.chainsaw.MyTableModel 
(assert (not (= var2135 null-var3628)))
(assert true)
;(assert (<init>/1727464312 (cast-from-var1555-to-var3921 var1712))) ; Statement: specialinvoke r0.<org.xml.sax.helpers.DefaultHandler: void <init>()>() 

(declare-const var1712!1 var1555)
(define-const var3633 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3633)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3633!1 String)
(declare-const var1712!2 var1555)
(assert (not (= var1712!2 null-var1555)))
(assert (= (mBuf/-631605741 var1712!2) var3633!1)) ; Statement: r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.StringBuffer mBuf> = $r1 
(declare-const var1712!3 var1555)
(assert (not (= var1712!3 null-var1555)))
(assert (= (mModel/-631605741 var1712!3) var2135)) ; Statement: r0.<org.apache.log4j.chainsaw.XMLFileHandler: org.apache.log4j.chainsaw.MyTableModel mModel> = r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1727464312=([org.xml.sax.helpers.DefaultHandler], void), cast-from-var1555-to-var3921=([org.apache.log4j.chainsaw.XMLFileHandler], org.xml.sax.helpers.DefaultHandler), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), mBuf/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], java.lang.StringBuffer), mModel/-631605741=([org.apache.log4j.chainsaw.XMLFileHandler], org.apache.log4j.chainsaw.MyTableModel)}
; {var1555=org.apache.log4j.chainsaw.XMLFileHandler, var1712=r0, var3628=org.apache.log4j.chainsaw.MyTableModel, var2135=r2, var3921=org.xml.sax.helpers.DefaultHandler, var3633=$r1}
; {org.apache.log4j.chainsaw.XMLFileHandler=var1555, r0=var1712, org.apache.log4j.chainsaw.MyTableModel=var3628, r2=var2135, org.xml.sax.helpers.DefaultHandler=var3921, $r1=var3633}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: org.apache.log4j.chainsaw.XMLFileHandler;	r2 := @parameter0: org.apache.log4j.chainsaw.MyTableModel;	specialinvoke r0.<org.xml.sax.helpers.DefaultHandler: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<org.apache.log4j.chainsaw.XMLFileHandler: java.lang.StringBuffer mBuf> = $r1;	r0.<org.apache.log4j.chainsaw.XMLFileHandler: org.apache.log4j.chainsaw.MyTableModel mModel> = r2;	return
;block_num 1