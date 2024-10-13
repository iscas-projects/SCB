(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3793 0)
(declare-sort var1382 0)
(declare-sort var1960 0)
(declare-sort var3852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun styles/-1073116066 (var3793) var1382)
(declare-fun var1960-init () var1960)
(declare-fun <init>/-1386210796 (var1960) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setFontName/-712088003 (var1960 String) void)
(declare-fun getString/1374316433 (var3793) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun applyFont/804923801 (var3793 Int Int var3852) void)
(declare-fun cast-from-var1960-to-var3852 (var1960) var3852)
(declare-const null-var3793 var3793)
(declare-const null-Int Int)
(declare-const null-var1382 var1382)
(declare-const var3657 var3793) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString 
(assert (not (= var3657 null-var3793)))
(declare-const var1272 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var1272 null-Int)))
(define-const var318 var1382 (styles/-1073116066 var3657)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
(assert (not (not (= var318 null-var1382)))) ; Negate: Cond: $r1 != null  
(define-const var1830 var1960 var1960-init) ; Statement: $r10 = new org.apache.poi.xssf.usermodel.XSSFFont 
(assert true)
;(assert (<init>/-1386210796 var1830)) ; Statement: specialinvoke $r10.<org.apache.poi.xssf.usermodel.XSSFFont: void <init>()>() 

(declare-const var1830!1 var1960)
(define-const var794 var1960 var1830!1) ; Statement: r9 = $r10 
(define-const var3688 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3688)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3688!1 String)
(assert (= var3688!1 ""))
(assert true)
(define-const var490 String (append/672562846 var3688!1 "#")) ; Statement: $r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var3688!2 String)
(assert (= var3688!2 (str.++ var3688!1 "#")))
(define-const var1694 Int (cast-from-Int-to-Int var1272)) ; Statement: $i2 = (int) s0 
(assert true)
(define-const var2855 String (append/-1001720160 var490 var1694)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var490!1 String)
(assert (str.prefixof var490 var490!1))
(assert true)
(define-const var2699 String (toString/-2075883882 var2855)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setFontName/-712088003 var1830!1 var2699)) ; Statement: virtualinvoke $r10.<org.apache.poi.xssf.usermodel.XSSFFont: void setFontName(java.lang.String)>($r7) 

(declare-const var1830!2 var1960)
(declare-const var2699!1 String)
 ; Statement: goto [?= $r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3039 String (getString/1374316433 var3657)) ; Statement: $r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>() 
(assert true)
(define-const var2290 Int (length/-134980193 var3039)) ; Statement: $i1 = virtualinvoke $r8.<java.lang.String: int length()>() 
(assert true)
;(assert (applyFont/804923801 var3657 0 var2290 (cast-from-var1960-to-var3852 var794))) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(0, $i1, r9) 

(declare-const var3657!1 var3793)
(declare-const var3401 Int)
(declare-const var2290!1 Int)
(declare-const var794!1 var1960)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {styles/-1073116066=([org.apache.poi.xssf.usermodel.XSSFRichTextString], org.apache.poi.xssf.model.StylesTable), var1960-init=([], org.apache.poi.xssf.usermodel.XSSFFont), <init>/-1386210796=([org.apache.poi.xssf.usermodel.XSSFFont], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([short], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setFontName/-712088003=([org.apache.poi.xssf.usermodel.XSSFFont, java.lang.String], void), getString/1374316433=([org.apache.poi.xssf.usermodel.XSSFRichTextString], java.lang.String), length/-134980193=([java.lang.String], int), applyFont/804923801=([org.apache.poi.xssf.usermodel.XSSFRichTextString, int, int, org.apache.poi.ss.usermodel.Font], void), cast-from-var1960-to-var3852=([org.apache.poi.xssf.usermodel.XSSFFont], org.apache.poi.ss.usermodel.Font)}
; {var3793=org.apache.poi.xssf.usermodel.XSSFRichTextString, var3657=r0, var1272=s0, var1382=org.apache.poi.xssf.model.StylesTable, var318=$r1, var1960=org.apache.poi.xssf.usermodel.XSSFFont, var1830=$r10, var794=r9, var3688=$r11, var490=$r5, var1694=$i2, var2855=$r6, var2699=$r7, var3039=$r8, var2290=$i1, var3852=org.apache.poi.ss.usermodel.Font, var3401=0}
; {org.apache.poi.xssf.usermodel.XSSFRichTextString=var3793, r0=var3657, s0=var1272, org.apache.poi.xssf.model.StylesTable=var1382, $r1=var318, org.apache.poi.xssf.usermodel.XSSFFont=var1960, $r10=var1830, r9=var794, $r11=var3688, $r5=var490, $i2=var1694, $r6=var2855, $r7=var2699, $r8=var3039, $i1=var2290, org.apache.poi.ss.usermodel.Font=var3852, 0=var3401}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString;	s0 := @parameter0: short;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	if $r1 != null goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	$r10 = new org.apache.poi.xssf.usermodel.XSSFFont;	specialinvoke $r10.<org.apache.poi.xssf.usermodel.XSSFFont: void <init>()>();	r9 = $r10;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$i2 = (int) s0;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r10.<org.apache.poi.xssf.usermodel.XSSFFont: void setFontName(java.lang.String)>($r7);	goto [?= $r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>()];	$r8 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: java.lang.String getString()>();	$i1 = virtualinvoke $r8.<java.lang.String: int length()>();	virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(0, $i1, r9);	return
;block_num 3