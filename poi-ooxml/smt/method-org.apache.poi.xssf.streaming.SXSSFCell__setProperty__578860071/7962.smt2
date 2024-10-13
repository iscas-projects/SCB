(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1327 0)
(declare-sort var3921 0)
(declare-sort var1884 0)
(declare-sort var2003 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _firstProperty/-828294607 (var1327) var1884)
(declare-fun var2003-init () var2003)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2003 String) void)
(declare-const null-var1327 var1327)
(declare-const null-Int Int)
(declare-const null-var3921 var3921)
(declare-const null-var1884 var1884)
(declare-const var3369 var1327) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.SXSSFCell 
(assert (not (= var3369 null-var1327)))
(declare-const var3918 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3918 null-Int)))
(declare-const var2669 var3921) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2669 null-var3921)))
(define-const var2937 var1884 (_firstProperty/-828294607 var3369)) ; Statement: r9 = r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.xssf.streaming.SXSSFCell$Property _firstProperty> 
(define-const var2693 var1884 null-var1884) ; Statement: r10 = null 
(assert true) ; Non Conditional
 ; Statement: if r9 == null goto (branch) 
(assert (= var2937 null-var1884)) ; Cond: r9 == null 
 ; Statement: if r9 == null goto (branch) 
(assert (= var2937 null-var1884)) ; Cond: r9 == null 
 ; Statement: lookupswitch(i0) {     case 1: goto $r3 = new org.apache.poi.xssf.streaming.SXSSFCell$CommentProperty;     case 2: goto $r1 = new org.apache.poi.xssf.streaming.SXSSFCell$HyperlinkProperty;     default: goto $r4 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3918 2)) (and (not (= var3918 1)) true))) ; Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional  
(define-const var1585 var2003 var2003-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2984 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2984)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2984!1 String)
(assert (= var2984!1 ""))
(assert true)
(define-const var3571 String (append/672562846 var2984!1 "Invalid type: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type: ") 
(declare-const var2984!2 String)
(assert (= var2984!2 (str.++ var2984!1 "Invalid type: ")))
(assert true)
(define-const var798 String (append/-1001720160 var3571 var3918)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3571!1 String)
(assert (str.prefixof var3571 var3571!1))
(assert true)
(define-const var403 String (toString/-2075883882 var798)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1585 var403)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1585!1 var2003)
(declare-const var403!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {_firstProperty/-828294607=([org.apache.poi.xssf.streaming.SXSSFCell], org.apache.poi.xssf.streaming.SXSSFCell$Property), var2003-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1327=org.apache.poi.xssf.streaming.SXSSFCell, var3369=r0, var3918=i0, var3921=java.lang.Object, var2669=r2, var1884=org.apache.poi.xssf.streaming.SXSSFCell$Property, var2937=r9, var2693=r10, var2003=java.lang.IllegalArgumentException, var1585=$r4, var2984=$r5, var3571=$r6, var798=$r7, var403=$r8}
; {org.apache.poi.xssf.streaming.SXSSFCell=var1327, r0=var3369, i0=var3918, java.lang.Object=var3921, r2=var2669, org.apache.poi.xssf.streaming.SXSSFCell$Property=var1884, r9=var2937, r10=var2693, java.lang.IllegalArgumentException=var2003, $r4=var1585, $r5=var2984, $r6=var3571, $r7=var798, $r8=var403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.SXSSFCell;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.Object;	r9 = r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.xssf.streaming.SXSSFCell$Property _firstProperty>;	r10 = null;	if r9 == null goto (branch);	if r9 == null goto (branch);	lookupswitch(i0) {     case 1: goto $r3 = new org.apache.poi.xssf.streaming.SXSSFCell$CommentProperty;     case 2: goto $r1 = new org.apache.poi.xssf.streaming.SXSSFCell$HyperlinkProperty;     default: goto $r4 = new java.lang.IllegalArgumentException; };	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 5