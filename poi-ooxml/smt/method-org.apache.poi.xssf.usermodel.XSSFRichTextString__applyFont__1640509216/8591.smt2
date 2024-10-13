(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var527 0)
(declare-sort var2052 0)
(declare-sort var2287 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun styles/-1073116066 (var527) var2052)
(declare-fun var2287-init () var2287)
(declare-fun <init>/-1386210796 (var2287) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setFontName/-712088003 (var2287 String) void)
(declare-fun applyFont/804923801 (var527 Int Int var1911) void)
(declare-fun cast-from-var2287-to-var1911 (var2287) var1911)
(declare-const null-var527 var527)
(declare-const null-Int Int)
(declare-const null-var2052 var2052)
(declare-const var284 var527) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString 
(assert (not (= var284 null-var527)))
(declare-const var937 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var937 null-Int)))
(declare-const var955 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var955 null-Int)))
(declare-const var1544 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var1544 null-Int)))
(define-const var2506 var2052 (styles/-1073116066 var284)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles> 
(assert (not (not (= var2506 null-var2052)))) ; Negate: Cond: $r1 != null  
(define-const var1449 var2287 var2287-init) ; Statement: $r9 = new org.apache.poi.xssf.usermodel.XSSFFont 
(assert true)
;(assert (<init>/-1386210796 var1449)) ; Statement: specialinvoke $r9.<org.apache.poi.xssf.usermodel.XSSFFont: void <init>()>() 

(declare-const var1449!1 var2287)
(define-const var1131 var2287 var1449!1) ; Statement: r8 = $r9 
(define-const var2762 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2762)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2762!1 String)
(assert (= var2762!1 ""))
(assert true)
(define-const var811 String (append/672562846 var2762!1 "#")) ; Statement: $r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2762!2 String)
(assert (= var2762!2 (str.++ var2762!1 "#")))
(define-const var3333 Int (cast-from-Int-to-Int var1544)) ; Statement: $i3 = (int) s0 
(assert true)
(define-const var3720 String (append/-1001720160 var811 var3333)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var811!1 String)
(assert (str.prefixof var811 var811!1))
(assert true)
(define-const var3217 String (toString/-2075883882 var3720)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setFontName/-712088003 var1449!1 var3217)) ; Statement: virtualinvoke $r9.<org.apache.poi.xssf.usermodel.XSSFFont: void setFontName(java.lang.String)>($r7) 

(declare-const var1449!2 var2287)
(declare-const var3217!1 String)
 ; Statement: goto [?= virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(i1, i2, r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (applyFont/804923801 var284 var937 var955 (cast-from-var2287-to-var1911 var1131))) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(i1, i2, r8) 

(declare-const var284!1 var527)
(declare-const var937!1 Int)
(declare-const var955!1 Int)
(declare-const var1131!1 var2287)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {styles/-1073116066=([org.apache.poi.xssf.usermodel.XSSFRichTextString], org.apache.poi.xssf.model.StylesTable), var2287-init=([], org.apache.poi.xssf.usermodel.XSSFFont), <init>/-1386210796=([org.apache.poi.xssf.usermodel.XSSFFont], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-Int-to-Int=([short], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setFontName/-712088003=([org.apache.poi.xssf.usermodel.XSSFFont, java.lang.String], void), applyFont/804923801=([org.apache.poi.xssf.usermodel.XSSFRichTextString, int, int, org.apache.poi.ss.usermodel.Font], void), cast-from-var2287-to-var1911=([org.apache.poi.xssf.usermodel.XSSFFont], org.apache.poi.ss.usermodel.Font)}
; {var527=org.apache.poi.xssf.usermodel.XSSFRichTextString, var284=r0, var937=i1, var955=i2, var1544=s0, var2052=org.apache.poi.xssf.model.StylesTable, var2506=$r1, var2287=org.apache.poi.xssf.usermodel.XSSFFont, var1449=$r9, var1131=r8, var2762=$r10, var811=$r5, var3333=$i3, var3720=$r6, var3217=$r7, var1911=org.apache.poi.ss.usermodel.Font}
; {org.apache.poi.xssf.usermodel.XSSFRichTextString=var527, r0=var284, i1=var937, i2=var955, s0=var1544, org.apache.poi.xssf.model.StylesTable=var2052, $r1=var2506, org.apache.poi.xssf.usermodel.XSSFFont=var2287, $r9=var1449, r8=var1131, $r10=var2762, $r5=var811, $i3=var3333, $r6=var3720, $r7=var3217, org.apache.poi.ss.usermodel.Font=var1911}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFRichTextString;	i1 := @parameter0: int;	i2 := @parameter1: int;	s0 := @parameter2: short;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	if $r1 != null goto $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: org.apache.poi.xssf.model.StylesTable styles>;	$r9 = new org.apache.poi.xssf.usermodel.XSSFFont;	specialinvoke $r9.<org.apache.poi.xssf.usermodel.XSSFFont: void <init>()>();	r8 = $r9;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$i3 = (int) s0;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r9.<org.apache.poi.xssf.usermodel.XSSFFont: void setFontName(java.lang.String)>($r7);	goto [?= virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(i1, i2, r8)];	virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFRichTextString: void applyFont(int,int,org.apache.poi.ss.usermodel.Font)>(i1, i2, r8);	return
;block_num 3