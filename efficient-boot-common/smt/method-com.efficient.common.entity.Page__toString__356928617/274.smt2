(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pageNum/-358458735 (var114) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun pageSize/-358458735 (var114) Int)
(declare-fun totalPage/-358458735 (var114) Int)
(declare-fun totalRow/-358458735 (var114) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var114 var114)
(declare-const var3220 var114) ; Statement: r1 := @this: com.efficient.common.entity.Page 
(assert (not (= var3220 null-var114)))
(define-const var165 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var165)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var165!1 String)
(assert (= var165!1 ""))
(assert true)
(define-const var1314 String (append/672562846 var165!1 "pageNumber : ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pageNumber : ") 
(declare-const var165!2 String)
(assert (= var165!2 (str.++ var165!1 "pageNumber : ")))
(define-const var2627 Int (pageNum/-358458735 var3220)) ; Statement: $i0 = r1.<com.efficient.common.entity.Page: int pageNum> 
(assert true)
(define-const var1774 String (append/-1001720160 var1314 var2627)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1314!1 String)
(assert (str.prefixof var1314 var1314!1))
(assert true)
(define-const var2322 String (append/672562846 var1774 "\npageSize : ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\npageSize : ") 
(declare-const var1774!1 String)
(assert (= var1774!1 (str.++ var1774 "\npageSize : ")))
(define-const var3316 Int (pageSize/-358458735 var3220)) ; Statement: $i1 = r1.<com.efficient.common.entity.Page: int pageSize> 
(assert true)
(define-const var2964 String (append/-1001720160 var2322 var3316)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2322!1 String)
(assert (str.prefixof var2322 var2322!1))
(assert true)
(define-const var373 String (append/672562846 var2964 "\ntotalPage : ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\ntotalPage : ") 
(declare-const var2964!1 String)
(assert (= var2964!1 (str.++ var2964 "\ntotalPage : ")))
(define-const var3224 Int (totalPage/-358458735 var3220)) ; Statement: $i2 = r1.<com.efficient.common.entity.Page: int totalPage> 
(assert true)
(define-const var1762 String (append/-1001720160 var373 var3224)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var373!1 String)
(assert (str.prefixof var373 var373!1))
(assert true)
(define-const var976 String (append/672562846 var1762 "\ntotalRow : ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\ntotalRow : ") 
(declare-const var1762!1 String)
(assert (= var1762!1 (str.++ var1762 "\ntotalRow : ")))
(define-const var1813 Int (totalRow/-358458735 var3220)) ; Statement: $i3 = r1.<com.efficient.common.entity.Page: int totalRow> 
(assert true)
(define-const var1942 String (append/-1001720160 var976 var1813)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var976!1 String)
(assert (str.prefixof var976 var976!1))
(assert true)
(define-const var2531 String (toString/-2075883882 var1942)) ; Statement: r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pageNum/-358458735=([com.efficient.common.entity.Page], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), pageSize/-358458735=([com.efficient.common.entity.Page], int), totalPage/-358458735=([com.efficient.common.entity.Page], int), totalRow/-358458735=([com.efficient.common.entity.Page], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var114=com.efficient.common.entity.Page, var3220=r1, var165=$r0, var1314=$r2, var2627=$i0, var1774=$r3, var2322=$r4, var3316=$i1, var2964=$r5, var373=$r6, var3224=$i2, var1762=$r7, var976=$r8, var1813=$i3, var1942=$r9, var2531=r10}
; {com.efficient.common.entity.Page=var114, r1=var3220, $r0=var165, $r2=var1314, $i0=var2627, $r3=var1774, $r4=var2322, $i1=var3316, $r5=var2964, $r6=var373, $i2=var3224, $r7=var1762, $r8=var976, $i3=var1813, $r9=var1942, r10=var2531}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.efficient.common.entity.Page;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("pageNumber : ");	$i0 = r1.<com.efficient.common.entity.Page: int pageNum>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\npageSize : ");	$i1 = r1.<com.efficient.common.entity.Page: int pageSize>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\ntotalPage : ");	$i2 = r1.<com.efficient.common.entity.Page: int totalPage>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\ntotalRow : ");	$i3 = r1.<com.efficient.common.entity.Page: int totalRow>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return r10
;block_num 1