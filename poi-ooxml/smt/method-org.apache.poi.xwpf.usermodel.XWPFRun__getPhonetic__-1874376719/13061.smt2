(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3640 0)
(declare-sort var1269 0)
(declare-sort var2180 0)
(declare-sort var555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun run/797003047 (var3640) var1269)
(declare-fun var1269_newCursor/82601287 (var1269) var2180)
(declare-const null-var3640 var3640)
(declare-const null-var555 var555)
(declare-const null-var2180 var2180)
(declare-const var3953 var3640) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFRun 
(assert (not (= var3953 null-var3640)))
(define-const var163 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var163 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var163!1 String)
(declare-const var2098 Int)
(define-const var652 var1269 (run/797003047 var3953)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFRun: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR run> 
(define-const var2328 var2180 (var1269_newCursor/82601287 var652)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.apache.xmlbeans.XmlCursor newCursor()>() 
(define-const var694 var555 null-var555) ; Statement: r13 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1789 var555) ; Statement: $r10 := @caughtexception 
(assert (not (= var1789 null-var555)))
(assert true) ; Non Conditional
 ; Statement: if r3 == null goto throw $r10 
(assert (= var2328 null-var2180)) ; Cond: r3 == null 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), run/797003047=([org.apache.poi.xwpf.usermodel.XWPFRun], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR), var1269_newCursor/82601287=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR], org.apache.xmlbeans.XmlCursor)}
; {var3640=org.apache.poi.xwpf.usermodel.XWPFRun, var3953=r1, var163=$r0, var2098=64, var1269=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR, var652=$r2, var2180=org.apache.xmlbeans.XmlCursor, var2328=r3, var555=java.lang.Throwable, var694=r13, var1789=$r10}
; {org.apache.poi.xwpf.usermodel.XWPFRun=var3640, r1=var3953, $r0=var163, 64=var2098, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR=var1269, $r2=var652, org.apache.xmlbeans.XmlCursor=var2180, r3=var2328, java.lang.Throwable=var555, r13=var694, $r10=var1789}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFRun;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFRun: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR run>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.apache.xmlbeans.XmlCursor newCursor()>();	r13 = null;	$r10 := @caughtexception;	if r3 == null goto throw $r10;	throw $r10
;block_num 4