(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1582 0)
(declare-sort var1544 0)
(declare-sort var1844 0)
(declare-sort var3725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun run/797003047 (var1582) var1544)
(declare-fun var1544_newCursor/82601287 (var1544) var1844)
(declare-const null-var1582 var1582)
(declare-const null-var3725 var3725)
(declare-const null-var1844 var1844)
(declare-const var3397 var1582) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFRun 
(assert (not (= var3397 null-var1582)))
(define-const var3829 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3829 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var3829!1 String)
(declare-const var746 Int)
(define-const var3516 var1544 (run/797003047 var3397)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFRun: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR run> 
(define-const var1268 var1844 (var1544_newCursor/82601287 var3516)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.apache.xmlbeans.XmlCursor newCursor()>() 
(define-const var1244 var3725 null-var3725) ; Statement: r8 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3622 var3725) ; Statement: $r5 := @caughtexception 
(assert (not (= var3622 null-var3725)))
(assert true) ; Non Conditional
 ; Statement: if r3 == null goto throw $r5 
(assert (= var1268 null-var1844)) ; Cond: r3 == null 
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), run/797003047=([org.apache.poi.xwpf.usermodel.XWPFRun], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR), var1544_newCursor/82601287=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR], org.apache.xmlbeans.XmlCursor)}
; {var1582=org.apache.poi.xwpf.usermodel.XWPFRun, var3397=r1, var3829=$r0, var746=64, var1544=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR, var3516=$r2, var1844=org.apache.xmlbeans.XmlCursor, var1268=r3, var3725=java.lang.Throwable, var1244=r8, var3622=$r5}
; {org.apache.poi.xwpf.usermodel.XWPFRun=var1582, r1=var3397, $r0=var3829, 64=var746, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR=var1544, $r2=var3516, org.apache.xmlbeans.XmlCursor=var1844, r3=var1268, java.lang.Throwable=var3725, r8=var1244, $r5=var3622}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFRun;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFRun: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR run>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.apache.xmlbeans.XmlCursor newCursor()>();	r8 = null;	$r5 := @caughtexception;	if r3 == null goto throw $r5;	throw $r5
;block_num 4