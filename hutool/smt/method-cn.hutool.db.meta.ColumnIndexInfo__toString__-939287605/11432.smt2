(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columnName/-745833877 (var1448) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun ascOrDesc/-745833877 (var1448) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1448 var1448)
(declare-const var1291 var1448) ; Statement: r1 := @this: cn.hutool.db.meta.ColumnIndexInfo 
(assert (not (= var1291 null-var1448)))
(define-const var3345 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3345)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3345!1 String)
(assert (= var3345!1 ""))
(assert true)
(define-const var3854 String (append/672562846 var3345!1 "ColumnIndexInfo{columnName=\u0027")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ColumnIndexInfo{columnName=\'") 
(declare-const var3345!2 String)
(assert (= var3345!2 (str.++ var3345!1 "ColumnIndexInfo{columnName=\u0027")))
(define-const var571 String (columnName/-745833877 var1291)) ; Statement: $r2 = r1.<cn.hutool.db.meta.ColumnIndexInfo: java.lang.String columnName> 
(assert true)
(define-const var766 String (append/672562846 var3854 var571)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3854!1 String)
(assert (= var3854!1 (str.++ var3854 var571)))
(assert true)
(define-const var3210 String (append/-1166366385 var766 39)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var766!1 String)
(assert (str.prefixof var766 var766!1))
(assert true)
(define-const var808 String (append/672562846 var3210 ", ascOrDesc=\u0027")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ascOrDesc=\'") 
(declare-const var3210!1 String)
(assert (= var3210!1 (str.++ var3210 ", ascOrDesc=\u0027")))
(define-const var2550 String (ascOrDesc/-745833877 var1291)) ; Statement: $r6 = r1.<cn.hutool.db.meta.ColumnIndexInfo: java.lang.String ascOrDesc> 
(assert true)
(define-const var218 String (append/672562846 var808 var2550)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var808!1 String)
(assert (= var808!1 (str.++ var808 var2550)))
(assert true)
(define-const var1877 String (append/-1166366385 var218 39)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var218!1 String)
(assert (str.prefixof var218 var218!1))
(assert true)
(define-const var1490 String (append/-1166366385 var1877 125)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var1877!1 String)
(assert (str.prefixof var1877 var1877!1))
(assert true)
(define-const var3493 String (toString/-2075883882 var1490)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columnName/-745833877=([cn.hutool.db.meta.ColumnIndexInfo], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), ascOrDesc/-745833877=([cn.hutool.db.meta.ColumnIndexInfo], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1448=cn.hutool.db.meta.ColumnIndexInfo, var1291=r1, var3345=$r0, var3854=$r3, var571=$r2, var766=$r4, var3210=$r5, var808=$r7, var2550=$r6, var218=$r8, var1877=$r9, var1490=$r10, var3493=$r11}
; {cn.hutool.db.meta.ColumnIndexInfo=var1448, r1=var1291, $r0=var3345, $r3=var3854, $r2=var571, $r4=var766, $r5=var3210, $r7=var808, $r6=var2550, $r8=var218, $r9=var1877, $r10=var1490, $r11=var3493}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.db.meta.ColumnIndexInfo;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ColumnIndexInfo{columnName=\'");	$r2 = r1.<cn.hutool.db.meta.ColumnIndexInfo: java.lang.String columnName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ascOrDesc=\'");	$r6 = r1.<cn.hutool.db.meta.ColumnIndexInfo: java.lang.String ascOrDesc>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1