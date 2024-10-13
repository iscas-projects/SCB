(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2339 0)
(declare-sort var3500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun src/-1548601273 (var2339) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun pos/-1548601273 (var2339) Int)
(declare-fun var3500-init () var3500)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1495607482 (var3500 String Int) void)
(declare-const null-var2339 var2339)
(declare-const var3816 var2339) ; Statement: r0 := @this: freemarker.core.ExtendedDecimalFormatParser 
(assert (not (= var3816 null-var2339)))
(define-const var2793 String (src/-1548601273 var3816)) ; Statement: $r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src> 
(assert true)
(define-const var934 Int (length/-134980193 var2793)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3818 Int (pos/-1548601273 var3816)) ; Statement: i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(define-const var3689 Int 0) ; Statement: c21 = 0 
(define-const var2536 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(assert true) ; Non Conditional
(define-const var1490 Int (pos/-1548601273 var3816)) ; Statement: $i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
 ; Statement: if $i2 >= i0 goto (branch) 
(assert (>= var1490 var934)) ; Cond: $i2 >= i0 
 ; Statement: if c21 == 0 goto $i3 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(assert (not (= var3689 0))) ; Negate: Cond: c21 == 0  
(define-const var2864 var3500 var3500-init) ; Statement: $r24 = new java.text.ParseException 
(define-const var2468 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2468)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2468!1 String)
(assert (= var2468!1 ""))
(assert true)
(define-const var826 String (append/672562846 var2468!1 "The ")) ; Statement: $r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ") 
(declare-const var2468!2 String)
(assert (= var2468!2 (str.++ var2468!1 "The ")))
(assert true)
(define-const var2393 String (append/-1166366385 var826 var3689)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c21) 
(declare-const var826!1 String)
(assert (str.prefixof var826 var826!1))
(assert true)
(define-const var169 String (append/672562846 var2393 " quotation wasn\u0027t closed when the end of the source was reached.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" quotation wasn\'t closed when the end of the source was reached.") 
(declare-const var2393!1 String)
(assert (= var2393!1 (str.++ var2393 " quotation wasn\u0027t closed when the end of the source was reached.")))
(assert true)
(define-const var1495 String (toString/-2075883882 var169)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var674 Int (pos/-1548601273 var3816)) ; Statement: $i5 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos> 
(assert true)
;(assert (<init>/1495607482 var2864 var1495 var674)) ; Statement: specialinvoke $r24.<java.text.ParseException: void <init>(java.lang.String,int)>($r8, $i5) 

(declare-const var2864!1 var3500)
(declare-const var1495!1 String)
(declare-const var674!1 Int)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {src/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], java.lang.String), length/-134980193=([java.lang.String], int), pos/-1548601273=([freemarker.core.ExtendedDecimalFormatParser], int), var3500-init=([], java.text.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1495607482=([java.text.ParseException, java.lang.String, int], void)}
; {var2339=freemarker.core.ExtendedDecimalFormatParser, var3816=r0, var2793=$r1, var934=i0, var3818=i1, var3689=c21, var2536=z1, var1490=$i2, var3500=java.text.ParseException, var2864=$r24, var2468=$r23, var826=$r5, var2393=$r6, var169=$r7, var1495=$r8, var674=$i5}
; {freemarker.core.ExtendedDecimalFormatParser=var2339, r0=var3816, $r1=var2793, i0=var934, i1=var3818, c21=var3689, z1=var2536, $i2=var1490, java.text.ParseException=var3500, $r24=var2864, $r23=var2468, $r5=var826, $r6=var2393, $r7=var169, $r8=var1495, $i5=var674}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.ExtendedDecimalFormatParser;	$r1 = r0.<freemarker.core.ExtendedDecimalFormatParser: java.lang.String src>;	i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i1 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	c21 = 0;	z1 = 0;	$i2 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	if $i2 >= i0 goto (branch);	if c21 == 0 goto $i3 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	$r24 = new java.text.ParseException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c21);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" quotation wasn\'t closed when the end of the source was reached.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$i5 = r0.<freemarker.core.ExtendedDecimalFormatParser: int pos>;	specialinvoke $r24.<java.text.ParseException: void <init>(java.lang.String,int)>($r8, $i5);	throw $r24
;block_num 4