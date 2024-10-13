(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3423 0)
(declare-sort var387 0)
(declare-sort var1358 0)
(declare-sort var1254 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1358_toBase64/-1497927727 (var3423 String) String)
(declare-fun var1254_getDataUri/698260339 (String String String) String)
(declare-const null-var3423 var3423)
(declare-const null-String String)
(declare-const var1617 var3423) ; Statement: r4 := @parameter0: java.awt.Image 
(assert (not (= var1617 null-var3423)))
(declare-const var536 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var536 null-String)))
(define-const var1915 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1915)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1915!1 String)
(assert (= var1915!1 ""))
(assert true)
(define-const var802 String (append/672562846 var1915!1 "image/")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("image/") 
(declare-const var1915!2 String)
(assert (= var1915!2 (str.++ var1915!1 "image/")))
(assert true)
(define-const var3862 String (append/672562846 var802 var536)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var802!1 String)
(assert (= var802!1 (str.++ var802 var536)))
(assert true)
(define-const var340 String (toString/-2075883882 var3862)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2901 String (var1358_toBase64/-1497927727 var1617 var536)) ; Statement: $r5 = staticinvoke <cn.hutool.core.img.ImgUtil: java.lang.String toBase64(java.awt.Image,java.lang.String)>(r4, r1) 
(define-const var3174 String (var1254_getDataUri/698260339 var340 "base64" var2901)) ; Statement: $r7 = staticinvoke <cn.hutool.core.util.URLUtil: java.lang.String getDataUri(java.lang.String,java.lang.String,java.lang.String)>($r6, "base64", $r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1358_toBase64/-1497927727=([java.awt.Image, java.lang.String], java.lang.String), var1254_getDataUri/698260339=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var3423=java.awt.Image, var1617=r4, var536=r1, var387=null_type, var1915=$r0, var802=$r2, var3862=$r3, var340=$r6, var1358=cn.hutool.core.img.ImgUtil, var2901=$r5, var1254=cn.hutool.core.util.URLUtil, var3174=$r7}
; {java.awt.Image=var3423, r4=var1617, r1=var536, null_type=var387, $r0=var1915, $r2=var802, $r3=var3862, $r6=var340, cn.hutool.core.img.ImgUtil=var1358, $r5=var2901, cn.hutool.core.util.URLUtil=var1254, $r7=var3174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.awt.Image;	r1 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("image/");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = staticinvoke <cn.hutool.core.img.ImgUtil: java.lang.String toBase64(java.awt.Image,java.lang.String)>(r4, r1);	$r7 = staticinvoke <cn.hutool.core.util.URLUtil: java.lang.String getDataUri(java.lang.String,java.lang.String,java.lang.String)>($r6, "base64", $r5);	return $r7
;block_num 1