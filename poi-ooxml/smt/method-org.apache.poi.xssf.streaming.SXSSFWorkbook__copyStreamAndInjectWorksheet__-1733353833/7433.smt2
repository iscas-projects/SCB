(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var313 0)
(declare-sort var2544 0)
(declare-sort var3053 0)
(declare-sort var2368 0)
(declare-sort var759 0)
(declare-sort var2607 0)
(declare-sort var3437 0)
(declare-sort var1320 0)
(declare-sort var1302 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2368-init () var2368)
(declare-fun <init>/-1518332612 (var2368 var313 var759) void)
(declare-fun var3437-init () var3437)
(declare-fun <init>/1982415372 (var3437 var2544 var759) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun read/2055644853 (var1320) Int)
(declare-fun cast-from-var2368-to-var1320 (var2368) var1320)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun flush/-1623275180 (var1302) void)
(declare-fun cast-from-var3437-to-var1302 (var3437) var1302)
(declare-fun var3053_writeSheetData/1823961419 (var3053 var2544) void)
(declare-fun write/654681022 (var1302 String) void)
(declare-const null-var313 var313)
(declare-const null-var2544 var2544)
(declare-const null-var3053 var3053)
(declare-const var2607-UTF_8 var759)
(declare-const var2170 var313) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2170 null-var313)))
(declare-const var594 var2544) ; Statement: r4 := @parameter1: java.io.OutputStream 
(assert (not (= var594 null-var2544)))
(declare-const var2759 var3053) ; Statement: r6 := @parameter2: org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector 
(assert (not (= var2759 null-var3053)))
(define-const var1794 var2368 var2368-init) ; Statement: $r20 = new java.io.InputStreamReader 
(define-const var1454 var759 var2607-UTF_8) ; Statement: $r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/-1518332612 var1794 var2170 var1454)) ; Statement: specialinvoke $r20.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.nio.charset.Charset)>(r1, $r2) 

(declare-const var1794!1 var2368)
(declare-const var2170!1 var313)
(declare-const var1454!1 var759)
(define-const var1427 var3437 var3437-init) ; Statement: $r21 = new java.io.OutputStreamWriter 
(define-const var2914 var759 var2607-UTF_8) ; Statement: $r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
;(assert (<init>/1982415372 var1427 var594 var2914)) ; Statement: specialinvoke $r21.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream,java.nio.charset.Charset)>(r4, $r5) 

(declare-const var1427!1 var3437)
(declare-const var594!1 var2544)
(declare-const var2914!1 var759)
(define-const var3318 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var2356 Int 0) ; Statement: i2 = 0 
(define-const var1050 String "<sheetData") ; Statement: r8 = "<sheetData" 
(define-const var2902 String "<sheetData") ; Statement: r19 = "<sheetData" 
(define-const var2214 String "<sheetData") ; Statement: r18 = "<sheetData" 
(define-const var2255 String "<sheetData") ; Statement: r17 = "<sheetData" 
(define-const var2951 String "<sheetData") ; Statement: r15 = "<sheetData" 
(define-const var697 String "<sheetData") ; Statement: r14 = "<sheetData" 
(define-const var93 String "<sheetData") ; Statement: r13 = "<sheetData" 
(define-const var3444 String "<sheetData") ; Statement: r12 = "<sheetData" 
(define-const var1907 String "<sheetData") ; Statement: r11 = "<sheetData" 
(define-const var2773 String "<sheetData") ; Statement: r10 = "<sheetData" 
(define-const var77 String "<sheetData") ; Statement: r9 = "<sheetData" 
(assert true)
(define-const var1510 Int (length/-134980193 var1907)) ; Statement: i3 = virtualinvoke r11.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2946 Int (read/2055644853 (cast-from-var2368-to-var1320 var1794!1))) ; Statement: $i4 = virtualinvoke $r20.<java.io.Reader: int read()>() 
(define-const var2911 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i4 == $i9 goto virtualinvoke $r21.<java.io.Writer: void flush()>() 
(assert (= var2946 var2911)) ; Cond: $i4 == $i9 
(assert true)
;(assert (flush/-1623275180 (cast-from-var3437-to-var1302 var1427!1))) ; Statement: virtualinvoke $r21.<java.io.Writer: void flush()>() 

(declare-const var1427!2 var3437)
 ; Statement: if z1 == 0 goto interfaceinvoke r6.<org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector: void writeSheetData(java.io.OutputStream)>(r4) 
(assert (= (ite var3318 1 0) 0)) ; Cond: z1 == 0 
;(assert (var3053_writeSheetData/1823961419 var2759 var594!1)) ; Statement: interfaceinvoke r6.<org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector: void writeSheetData(java.io.OutputStream)>(r4) 

(declare-const var2759!1 var3053)
(declare-const var594!2 var2544)
(assert true)
;(assert (write/654681022 (cast-from-var3437-to-var1302 var1427!2) "</sheetData>")) ; Statement: virtualinvoke $r21.<java.io.Writer: void write(java.lang.String)>("</sheetData>") 

(declare-const var1427!3 var3437)
(declare-const var3341 String)
(assert true)
;(assert (flush/-1623275180 (cast-from-var3437-to-var1302 var1427!3))) ; Statement: virtualinvoke $r21.<java.io.Writer: void flush()>() 

(declare-const var1427!4 var3437)
(assert true) ; Non Conditional
(assert true)
(define-const var3086 Int (read/2055644853 (cast-from-var2368-to-var1320 var1794!1))) ; Statement: $i7 = virtualinvoke $r20.<java.io.Reader: int read()>() 
(define-const var2079 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i17 = (int) -1 
 ; Statement: if $i7 == $i17 goto virtualinvoke $r21.<java.io.Writer: void flush()>() 
(assert (= var3086 var2079)) ; Cond: $i7 == $i17 
(assert true)
;(assert (flush/-1623275180 (cast-from-var3437-to-var1302 var1427!4))) ; Statement: virtualinvoke $r21.<java.io.Writer: void flush()>() 

(declare-const var1427!5 var3437)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2368-init=([], java.io.InputStreamReader), <init>/-1518332612=([java.io.InputStreamReader, java.io.InputStream, java.nio.charset.Charset], void), var3437-init=([], java.io.OutputStreamWriter), <init>/1982415372=([java.io.OutputStreamWriter, java.io.OutputStream, java.nio.charset.Charset], void), length/-134980193=([java.lang.String], int), read/2055644853=([java.io.Reader], int), cast-from-var2368-to-var1320=([java.io.InputStreamReader], java.io.Reader), cast-from-Int-to-Int=([int], int), flush/-1623275180=([java.io.Writer], void), cast-from-var3437-to-var1302=([java.io.OutputStreamWriter], java.io.Writer), var3053_writeSheetData/1823961419=([org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector, java.io.OutputStream], void), write/654681022=([java.io.Writer, java.lang.String], void)}
; {var313=java.io.InputStream, var2170=r1, var2544=java.io.OutputStream, var594=r4, var3053=org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector, var2759=r6, var2368=java.io.InputStreamReader, var1794=$r20, var759=java.nio.charset.Charset, var2607=java.nio.charset.StandardCharsets, var1454=$r2, var3437=java.io.OutputStreamWriter, var1427=$r21, var2914=$r5, var3318=z1, var2356=i2, var1050=r8, var2902=r19, var2214=r18, var2255=r17, var2951=r15, var697=r14, var93=r13, var3444=r12, var1907=r11, var2773=r10, var77=r9, var1510=i3, var1320=java.io.Reader, var2946=$i4, var2911=$i9, var1302=java.io.Writer, var3341="</sheetData>", var3086=$i7, var2079=$i17}
; {java.io.InputStream=var313, r1=var2170, java.io.OutputStream=var2544, r4=var594, org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector=var3053, r6=var2759, java.io.InputStreamReader=var2368, $r20=var1794, java.nio.charset.Charset=var759, java.nio.charset.StandardCharsets=var2607, $r2=var1454, java.io.OutputStreamWriter=var3437, $r21=var1427, $r5=var2914, z1=var3318, i2=var2356, r8=var1050, r19=var2902, r18=var2214, r17=var2255, r15=var2951, r14=var697, r13=var93, r12=var3444, r11=var1907, r10=var2773, r9=var77, i3=var1510, java.io.Reader=var1320, $i4=var2946, $i9=var2911, java.io.Writer=var1302, "</sheetData>"=var3341, $i7=var3086, $i17=var2079}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.io.InputStream;	r4 := @parameter1: java.io.OutputStream;	r6 := @parameter2: org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector;	$r20 = new java.io.InputStreamReader;	$r2 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r20.<java.io.InputStreamReader: void <init>(java.io.InputStream,java.nio.charset.Charset)>(r1, $r2);	$r21 = new java.io.OutputStreamWriter;	$r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	specialinvoke $r21.<java.io.OutputStreamWriter: void <init>(java.io.OutputStream,java.nio.charset.Charset)>(r4, $r5);	z1 = 1;	i2 = 0;	r8 = "<sheetData";	r19 = "<sheetData";	r18 = "<sheetData";	r17 = "<sheetData";	r15 = "<sheetData";	r14 = "<sheetData";	r13 = "<sheetData";	r12 = "<sheetData";	r11 = "<sheetData";	r10 = "<sheetData";	r9 = "<sheetData";	i3 = virtualinvoke r11.<java.lang.String: int length()>();	$i4 = virtualinvoke $r20.<java.io.Reader: int read()>();	$i9 = (int) -1;	if $i4 == $i9 goto virtualinvoke $r21.<java.io.Writer: void flush()>();	virtualinvoke $r21.<java.io.Writer: void flush()>();	if z1 == 0 goto interfaceinvoke r6.<org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector: void writeSheetData(java.io.OutputStream)>(r4);	interfaceinvoke r6.<org.apache.poi.xssf.streaming.SXSSFWorkbook$ISheetInjector: void writeSheetData(java.io.OutputStream)>(r4);	virtualinvoke $r21.<java.io.Writer: void write(java.lang.String)>("</sheetData>");	virtualinvoke $r21.<java.io.Writer: void flush()>();	$i7 = virtualinvoke $r20.<java.io.Reader: int read()>();	$i17 = (int) -1;	if $i7 == $i17 goto virtualinvoke $r21.<java.io.Writer: void flush()>();	virtualinvoke $r21.<java.io.Writer: void flush()>();	return
;block_num 6