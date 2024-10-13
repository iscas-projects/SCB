(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2141 0)
(declare-sort var3633 0)
(declare-sort var2074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun color/812164559 (var2141) var3633)
(declare-fun var3633_getVal/-481820259 (var3633) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun toUpperCase/398655892 (String var2074) String)
(declare-const null-var2141 var2141)
(declare-const var2074-ROOT var2074)
(declare-const var517 var2141) ; Statement: r1 := @this: org.apache.poi.xddf.usermodel.XDDFColorRgbBinary 
(assert (not (= var517 null-var2141)))
(define-const var2436 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var2436 6)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(6) 

(declare-const var2436!1 String)
(declare-const var3269 Int)
(define-const var2035 var3633 (color/812164559 var517)) ; Statement: $r2 = r1.<org.apache.poi.xddf.usermodel.XDDFColorRgbBinary: org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor color> 
(define-const var2833 (Array Int Int) (var3633_getVal/-481820259 var2035)) ; Statement: r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor: byte[] getVal()>() 
(define-const var3162 Int (getLength-Arr-Int-1 var2833)) ; Statement: i0 = lengthof r3 
(define-const var3675 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3675 var3162)) ; Cond: i2 >= i0 
(assert true)
(define-const var3925 String (toString/-2075883882 var2436!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var628 var2074 var2074-ROOT) ; Statement: $r4 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var860 String (toUpperCase/398655892 var3925 var628)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), color/812164559=([org.apache.poi.xddf.usermodel.XDDFColorRgbBinary], org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor), var3633_getVal/-481820259=([org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor], byte[]), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2141=org.apache.poi.xddf.usermodel.XDDFColorRgbBinary, var517=r1, var2436=$r0, var3269=6, var3633=org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor, var2035=$r2, var2833=r3, var3162=i0, var3675=i2, var3925=$r5, var2074=java.util.Locale, var628=$r4, var860=$r6}
; {org.apache.poi.xddf.usermodel.XDDFColorRgbBinary=var2141, r1=var517, $r0=var2436, 6=var3269, org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor=var3633, $r2=var2035, r3=var2833, i0=var3162, i2=var3675, $r5=var3925, java.util.Locale=var2074, $r4=var628, $r6=var860}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r1 := @this: org.apache.poi.xddf.usermodel.XDDFColorRgbBinary;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(6);	$r2 = r1.<org.apache.poi.xddf.usermodel.XDDFColorRgbBinary: org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor color>;	r3 = interfaceinvoke $r2.<org.openxmlformats.schemas.drawingml.x2006.main.CTSRgbColor: byte[] getVal()>();	i0 = lengthof r3;	i2 = 0;	if i2 >= i0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r4);	return $r6
;block_num 3