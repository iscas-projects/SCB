(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1173 0)
(declare-sort var1835 0)
(declare-sort var3841 0)
(declare-sort var2123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resultMapping/1016551526 (var1173) var1835)
(declare-fun var1835_access$1000/-1999555399 (var1835) String)
(declare-fun var1835_access$900/-551710825 (var1835) String)
(declare-fun var2123-init () var2123)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1835_access$400/-637943022 (var1835) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2123 String) void)
(declare-const null-var1173 var1173)
(declare-const null-String String)
(declare-const var1568 var1173) ; Statement: r0 := @this: org.apache.ibatis.mapping.ResultMapping$Builder 
(assert (not (= var1568 null-var1173)))
(define-const var1783 var1835 (resultMapping/1016551526 var1568)) ; Statement: $r1 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping> 
(define-const var338 String (var1835_access$1000/-1999555399 var1783)) ; Statement: $r2 = staticinvoke <org.apache.ibatis.mapping.ResultMapping: java.lang.String access$1000(org.apache.ibatis.mapping.ResultMapping)>($r1) 
 ; Statement: if $r2 == null goto $r3 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping> 
(assert (not (= var338 null-String))) ; Negate: Cond: $r2 == null  
(define-const var2484 var1835 (resultMapping/1016551526 var1568)) ; Statement: $r44 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping> 
(define-const var3093 String (var1835_access$900/-551710825 var2484)) ; Statement: $r45 = staticinvoke <org.apache.ibatis.mapping.ResultMapping: java.lang.String access$900(org.apache.ibatis.mapping.ResultMapping)>($r44) 
 ; Statement: if $r45 == null goto $r3 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping> 
(assert (not (= var3093 null-String))) ; Negate: Cond: $r45 == null  
(define-const var2616 var2123 var2123-init) ; Statement: $r46 = new java.lang.IllegalStateException 
(define-const var2126 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2126)) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2126!1 String)
(assert (= var2126!1 ""))
(assert true)
(define-const var167 String (append/672562846 var2126!1 "Cannot define both nestedQueryId and nestedResultMapId in property ")) ; Statement: $r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot define both nestedQueryId and nestedResultMapId in property ") 
(declare-const var2126!2 String)
(assert (= var2126!2 (str.++ var2126!1 "Cannot define both nestedQueryId and nestedResultMapId in property ")))
(define-const var1917 var1835 (resultMapping/1016551526 var1568)) ; Statement: $r48 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping> 
(define-const var3386 String (var1835_access$400/-637943022 var1917)) ; Statement: $r49 = staticinvoke <org.apache.ibatis.mapping.ResultMapping: java.lang.String access$400(org.apache.ibatis.mapping.ResultMapping)>($r48) 
(assert true)
(define-const var2065 String (append/672562846 var167 var3386)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49) 
(declare-const var167!1 String)
(assert (= var167!1 (str.++ var167 var3386)))
(assert true)
(define-const var3637 String (toString/-2075883882 var2065)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2616 var3637)) ; Statement: specialinvoke $r46.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r52) 

(declare-const var2616!1 var2123)
(declare-const var3637!1 String)
 ; Statement: throw $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {resultMapping/1016551526=([org.apache.ibatis.mapping.ResultMapping$Builder], org.apache.ibatis.mapping.ResultMapping), var1835_access$1000/-1999555399=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), var1835_access$900/-551710825=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), var2123-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1835_access$400/-637943022=([org.apache.ibatis.mapping.ResultMapping], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1173=org.apache.ibatis.mapping.ResultMapping$Builder, var1568=r0, var1835=org.apache.ibatis.mapping.ResultMapping, var1783=$r1, var338=$r2, var3841=null_type, var2484=$r44, var3093=$r45, var2123=java.lang.IllegalStateException, var2616=$r46, var2126=$r47, var167=$r50, var1917=$r48, var3386=$r49, var2065=$r51, var3637=$r52}
; {org.apache.ibatis.mapping.ResultMapping$Builder=var1173, r0=var1568, org.apache.ibatis.mapping.ResultMapping=var1835, $r1=var1783, $r2=var338, null_type=var3841, $r44=var2484, $r45=var3093, java.lang.IllegalStateException=var2123, $r46=var2616, $r47=var2126, $r50=var167, $r48=var1917, $r49=var3386, $r51=var2065, $r52=var3637}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.mapping.ResultMapping$Builder;	$r1 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping>;	$r2 = staticinvoke <org.apache.ibatis.mapping.ResultMapping: java.lang.String access$1000(org.apache.ibatis.mapping.ResultMapping)>($r1);	if $r2 == null goto $r3 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping>;	$r44 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping>;	$r45 = staticinvoke <org.apache.ibatis.mapping.ResultMapping: java.lang.String access$900(org.apache.ibatis.mapping.ResultMapping)>($r44);	if $r45 == null goto $r3 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping>;	$r46 = new java.lang.IllegalStateException;	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot define both nestedQueryId and nestedResultMapId in property ");	$r48 = r0.<org.apache.ibatis.mapping.ResultMapping$Builder: org.apache.ibatis.mapping.ResultMapping resultMapping>;	$r49 = staticinvoke <org.apache.ibatis.mapping.ResultMapping: java.lang.String access$400(org.apache.ibatis.mapping.ResultMapping)>($r48);	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r46.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r52);	throw $r46
;block_num 3