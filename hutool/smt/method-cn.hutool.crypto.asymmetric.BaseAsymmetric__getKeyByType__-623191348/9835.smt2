(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2238 0)
(declare-sort var2541 0)
(declare-sort var2020 0)
(declare-sort var3976 0)
(declare-sort var1338 0)
(declare-sort var3225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3976) Int)
(declare-fun cast-from-var2541-to-var3976 (var2541) var3976)
(declare-fun var1338-init () var1338)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3225) String)
(declare-fun cast-from-var2541-to-var3225 (var2541) var3225)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1049879821 (var1338 String) void)
(declare-const null-var2238 var2238)
(declare-const null-var2541 var2541)
(declare-const var2020-$SwitchMap$cn$hutool$crypto$asymmetric$KeyType (Array Int Int))
(declare-const var3769 var2238) ; Statement: r2 := @this: cn.hutool.crypto.asymmetric.BaseAsymmetric 
(assert (not (= var3769 null-var2238)))
(declare-const var2700 var2541) ; Statement: r0 := @parameter0: cn.hutool.crypto.asymmetric.KeyType 
(assert (not (= var2700 null-var2541)))
(define-const var3552 (Array Int Int) var2020-$SwitchMap$cn$hutool$crypto$asymmetric$KeyType) ; Statement: $r1 = <cn.hutool.crypto.asymmetric.BaseAsymmetric$1: int[] $SwitchMap$cn$hutool$crypto$asymmetric$KeyType> 
(assert true)
(define-const var2205 Int (ordinal/-291641772 (cast-from-var2541-to-var3976 var2700))) ; Statement: $i0 = virtualinvoke r0.<cn.hutool.crypto.asymmetric.KeyType: int ordinal()>() 
(define-const var1351 Int (select var3552 var2205)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r6 = r2.<cn.hutool.crypto.asymmetric.BaseAsymmetric: java.security.PrivateKey privateKey>;     case 2: goto $r3 = r2.<cn.hutool.crypto.asymmetric.BaseAsymmetric: java.security.PublicKey publicKey>;     default: goto $r9 = new cn.hutool.crypto.CryptoException; } 
(assert (and (not (= var1351 2)) (and (not (= var1351 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1781 var1338 var1338-init) ; Statement: $r9 = new cn.hutool.crypto.CryptoException 
(define-const var1896 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1896)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1896!1 String)
(assert (= var1896!1 ""))
(assert true)
(define-const var2230 String (append/672562846 var1896!1 "Unsupported key type: ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported key type: ") 
(declare-const var1896!2 String)
(assert (= var1896!2 (str.++ var1896!1 "Unsupported key type: ")))
(assert true)
(define-const var1712 String (append/-1031950772 var2230 (cast-from-var2541-to-var3225 var2700))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2230!1 String)
(assert (str.prefixof var2230 var2230!1))
(assert true)
(define-const var221 String (toString/-2075883882 var1712)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1049879821 var1781 var221)) ; Statement: specialinvoke $r9.<cn.hutool.crypto.CryptoException: void <init>(java.lang.String)>($r13) 

(declare-const var1781!1 var1338)
(declare-const var221!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2541-to-var3976=([cn.hutool.crypto.asymmetric.KeyType], java.lang.Enum), var1338-init=([], cn.hutool.crypto.CryptoException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2541-to-var3225=([cn.hutool.crypto.asymmetric.KeyType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1049879821=([cn.hutool.crypto.CryptoException, java.lang.String], void)}
; {var2238=cn.hutool.crypto.asymmetric.BaseAsymmetric, var3769=r2, var2541=cn.hutool.crypto.asymmetric.KeyType, var2700=r0, var2020=cn.hutool.crypto.asymmetric.BaseAsymmetric$1, var3552=$r1, var3976=java.lang.Enum, var2205=$i0, var1351=$i1, var1338=cn.hutool.crypto.CryptoException, var1781=$r9, var1896=$r10, var2230=$r11, var3225=java.lang.Object, var1712=$r12, var221=$r13}
; {cn.hutool.crypto.asymmetric.BaseAsymmetric=var2238, r2=var3769, cn.hutool.crypto.asymmetric.KeyType=var2541, r0=var2700, cn.hutool.crypto.asymmetric.BaseAsymmetric$1=var2020, $r1=var3552, java.lang.Enum=var3976, $i0=var2205, $i1=var1351, cn.hutool.crypto.CryptoException=var1338, $r9=var1781, $r10=var1896, $r11=var2230, java.lang.Object=var3225, $r12=var1712, $r13=var221}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: cn.hutool.crypto.asymmetric.BaseAsymmetric;	r0 := @parameter0: cn.hutool.crypto.asymmetric.KeyType;	$r1 = <cn.hutool.crypto.asymmetric.BaseAsymmetric$1: int[] $SwitchMap$cn$hutool$crypto$asymmetric$KeyType>;	$i0 = virtualinvoke r0.<cn.hutool.crypto.asymmetric.KeyType: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 1: goto $r6 = r2.<cn.hutool.crypto.asymmetric.BaseAsymmetric: java.security.PrivateKey privateKey>;     case 2: goto $r3 = r2.<cn.hutool.crypto.asymmetric.BaseAsymmetric: java.security.PublicKey publicKey>;     default: goto $r9 = new cn.hutool.crypto.CryptoException; };	$r9 = new cn.hutool.crypto.CryptoException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported key type: ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<cn.hutool.crypto.CryptoException: void <init>(java.lang.String)>($r13);	throw $r9
;block_num 2