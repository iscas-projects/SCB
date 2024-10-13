(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1947 0)
(declare-sort var3998 0)
(declare-sort var414 0)
(declare-sort var3869 0)
(declare-sort var1784 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3869) void)
(declare-fun cast-from-var1947-to-var3869 (var1947) var3869)
(declare-fun run/1200439706 (var1947) var414)
(declare-fun ctPic/1200439706 (var1947) var3998)
(declare-fun var1784-init () var1784)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3869) String)
(declare-fun cast-from-var3998-to-var3869 (var3998) var3869)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1784 String) void)
(declare-const null-var1947 var1947)
(declare-const null-var3998 var3998)
(declare-const null-var414 var414)
(declare-const var2539 var1947) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFPicture 
(assert (not (= var2539 null-var1947)))
(declare-const var133 var3998) ; Statement: r2 := @parameter0: org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture 
(assert (not (= var133 null-var3998)))
(declare-const var1310 var414) ; Statement: r1 := @parameter1: org.apache.poi.xwpf.usermodel.XWPFRun 
(assert (not (= var1310 null-var414)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1947-to-var3869 var2539))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2539!1 var1947)
(declare-const var2539!2 var1947)
(assert (not (= var2539!2 null-var1947)))
(assert (= (run/1200439706 var2539!2) var1310)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFPicture: org.apache.poi.xwpf.usermodel.XWPFRun run> = r1 
(declare-const var2539!3 var1947)
(assert (not (= var2539!3 null-var1947)))
(assert (= (ctPic/1200439706 var2539!3) var133)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFPicture: org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture ctPic> = r2 
 ; Statement: if r2 == null goto $r9 = new java.lang.IllegalArgumentException 
(assert (= var133 null-var3998)) ; Cond: r2 == null 
(define-const var239 var1784 var1784-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var660 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var660)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var660!1 String)
(assert (= var660!1 ""))
(assert true)
(define-const var2405 String (append/672562846 var660!1 "Found missing data while reading picture data from ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found missing data while reading picture data from ") 
(declare-const var660!2 String)
(assert (= var660!2 (str.++ var660!1 "Found missing data while reading picture data from ")))
(assert true)
(define-const var3803 String (append/-1031950772 var2405 (cast-from-var3998-to-var3869 var133))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2405!1 String)
(assert (str.prefixof var2405 var2405!1))
(assert true)
(define-const var603 String (toString/-2075883882 var3803)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var239 var603)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var239!1 var1784)
(declare-const var603!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1947-to-var3869=([org.apache.poi.xwpf.usermodel.XWPFPicture], java.lang.Object), run/1200439706=([org.apache.poi.xwpf.usermodel.XWPFPicture], org.apache.poi.xwpf.usermodel.XWPFRun), ctPic/1200439706=([org.apache.poi.xwpf.usermodel.XWPFPicture], org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture), var1784-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3998-to-var3869=([org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1947=org.apache.poi.xwpf.usermodel.XWPFPicture, var2539=r0, var3998=org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture, var133=r2, var414=org.apache.poi.xwpf.usermodel.XWPFRun, var1310=r1, var3869=java.lang.Object, var1784=java.lang.IllegalArgumentException, var239=$r9, var660=$r10, var2405=$r11, var3803=$r12, var603=$r13}
; {org.apache.poi.xwpf.usermodel.XWPFPicture=var1947, r0=var2539, org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture=var3998, r2=var133, org.apache.poi.xwpf.usermodel.XWPFRun=var414, r1=var1310, java.lang.Object=var3869, java.lang.IllegalArgumentException=var1784, $r9=var239, $r10=var660, $r11=var2405, $r12=var3803, $r13=var603}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFPicture;	r2 := @parameter0: org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture;	r1 := @parameter1: org.apache.poi.xwpf.usermodel.XWPFRun;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.poi.xwpf.usermodel.XWPFPicture: org.apache.poi.xwpf.usermodel.XWPFRun run> = r1;	r0.<org.apache.poi.xwpf.usermodel.XWPFPicture: org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture ctPic> = r2;	if r2 == null goto $r9 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Found missing data while reading picture data from ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r9
;block_num 2