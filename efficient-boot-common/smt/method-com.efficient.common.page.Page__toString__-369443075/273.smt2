(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pageNum/339798309 (var1344) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun pageSize/339798309 (var1344) Int)
(declare-fun totalPage/339798309 (var1344) Int)
(declare-fun totalRow/339798309 (var1344) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1344 var1344)
(declare-const var236 var1344) ; Statement: r1 := @this: com.efficient.common.page.Page 
(assert (not (= var236 null-var1344)))
(define-const var2720 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2720)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2720!1 String)
(assert (= var2720!1 ""))
(assert true)
(define-const var1016 String (append/672562846 var2720!1 "pageNumber : ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pageNumber : ") 
(declare-const var2720!2 String)
(assert (= var2720!2 (str.++ var2720!1 "pageNumber : ")))
(define-const var1487 Int (pageNum/339798309 var236)) ; Statement: $i0 = r1.<com.efficient.common.page.Page: int pageNum> 
(assert true)
(define-const var2687 String (append/-1001720160 var1016 var1487)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1016!1 String)
(assert (str.prefixof var1016 var1016!1))
(assert true)
(define-const var1735 String (append/672562846 var2687 "\npageSize : ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\npageSize : ") 
(declare-const var2687!1 String)
(assert (= var2687!1 (str.++ var2687 "\npageSize : ")))
(define-const var2942 Int (pageSize/339798309 var236)) ; Statement: $i1 = r1.<com.efficient.common.page.Page: int pageSize> 
(assert true)
(define-const var1390 String (append/-1001720160 var1735 var2942)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1735!1 String)
(assert (str.prefixof var1735 var1735!1))
(assert true)
(define-const var2617 String (append/672562846 var1390 "\ntotalPage : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\ntotalPage : ") 
(declare-const var1390!1 String)
(assert (= var1390!1 (str.++ var1390 "\ntotalPage : ")))
(define-const var2545 Int (totalPage/339798309 var236)) ; Statement: $i2 = r1.<com.efficient.common.page.Page: int totalPage> 
(assert true)
(define-const var1341 String (append/-1001720160 var2617 var2545)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2617!1 String)
(assert (str.prefixof var2617 var2617!1))
(assert true)
(define-const var2776 String (append/672562846 var1341 "\ntotalRow : ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\ntotalRow : ") 
(declare-const var1341!1 String)
(assert (= var1341!1 (str.++ var1341 "\ntotalRow : ")))
(define-const var1762 Int (totalRow/339798309 var236)) ; Statement: $i3 = r1.<com.efficient.common.page.Page: int totalRow> 
(assert true)
(define-const var2768 String (append/-1001720160 var2776 var1762)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var2776!1 String)
(assert (str.prefixof var2776 var2776!1))
(assert true)
(define-const var3261 String (toString/-2075883882 var2768)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pageNum/339798309=([com.efficient.common.page.Page], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), pageSize/339798309=([com.efficient.common.page.Page], int), totalPage/339798309=([com.efficient.common.page.Page], int), totalRow/339798309=([com.efficient.common.page.Page], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1344=com.efficient.common.page.Page, var236=r1, var2720=$r0, var1016=$r2, var1487=$i0, var2687=$r3, var1735=$r4, var2942=$i1, var1390=$r5, var2617=$r6, var2545=$i2, var1341=$r7, var2776=$r8, var1762=$i3, var2768=$r9, var3261=r10}
; {com.efficient.common.page.Page=var1344, r1=var236, $r0=var2720, $r2=var1016, $i0=var1487, $r3=var2687, $r4=var1735, $i1=var2942, $r5=var1390, $r6=var2617, $i2=var2545, $r7=var1341, $r8=var2776, $i3=var1762, $r9=var2768, r10=var3261}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.efficient.common.page.Page;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pageNumber : ");	$i0 = r1.<com.efficient.common.page.Page: int pageNum>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\npageSize : ");	$i1 = r1.<com.efficient.common.page.Page: int pageSize>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\ntotalPage : ");	$i2 = r1.<com.efficient.common.page.Page: int totalPage>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\ntotalRow : ");	$i3 = r1.<com.efficient.common.page.Page: int totalRow>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return r10
;block_num 1