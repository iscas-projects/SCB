(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var894 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var894 null-Int)))
(declare-const var3652 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3652 null-Int)))
(declare-const var3411 Int) ; Statement: l2 := @parameter2: long 
(assert (not (= var3411 null-Int)))
(declare-const var1817 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var1817 null-Bool)))
(declare-const var1701 Int) ; Statement: i3 := @parameter4: int 
(assert (not (= var1701 null-Int)))
(define-const var2485 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2485)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2485!1 String)
(assert (= var2485!1 ""))
(assert true)
(define-const var2896 String (append/672562846 var2485!1 "New constant pool: startPosition=")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("New constant pool: startPosition=") 
(declare-const var2485!2 String)
(assert (= var2485!2 (str.++ var2485!1 "New constant pool: startPosition=")))
(assert true)
(define-const var2457 String (append/-901862667 var2896 var894)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2896!1 String)
(assert (str.prefixof var2896 var2896!1))
(assert true)
(define-const var3027 String (append/672562846 var2457 ", size=")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", size=") 
(declare-const var2457!1 String)
(assert (= var2457!1 (str.++ var2457 ", size=")))
(assert true)
(define-const var3716 String (append/-1001720160 var3027 var3652)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3027!1 String)
(assert (str.prefixof var3027 var3027!1))
(assert true)
(define-const var1351 String (append/672562846 var3716 ", deltaToNext=")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", deltaToNext=") 
(declare-const var3716!1 String)
(assert (= var3716!1 (str.++ var3716 ", deltaToNext=")))
(assert true)
(define-const var288 String (append/-901862667 var1351 var3411)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l2) 
(declare-const var1351!1 String)
(assert (str.prefixof var1351 var1351!1))
(assert true)
(define-const var1256 String (append/672562846 var288 ", flush=")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", flush=") 
(declare-const var288!1 String)
(assert (= var288!1 (str.++ var288 ", flush=")))
(assert true)
(define-const var836 String (append/-388390247 var1256 var1817)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0) 
(declare-const var1256!1 String)
(assert (str.prefixof var1256 var1256!1))
(assert true)
(define-const var3967 String (append/672562846 var836 ", poolCount=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", poolCount=") 
(declare-const var836!1 String)
(assert (= var836!1 (str.++ var836 ", poolCount=")))
(assert true)
(define-const var3943 String (append/-1001720160 var3967 var1701)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3967!1 String)
(assert (str.prefixof var3967 var3967!1))
(assert true)
(define-const var2662 String (toString/-2075883882 var3943)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var894=l0, var3652=i1, var3411=l2, var1817=z0, var1701=i3, var2485=$r0, var2896=$r1, var2457=$r2, var3027=$r3, var3716=$r4, var1351=$r5, var288=$r6, var1256=$r7, var836=$r8, var3967=$r9, var3943=$r10, var2662=$r11}
; {l0=var894, i1=var3652, l2=var3411, z0=var1817, i3=var1701, $r0=var2485, $r1=var2896, $r2=var2457, $r3=var3027, $r4=var3716, $r5=var1351, $r6=var288, $r7=var1256, $r8=var836, $r9=var3967, $r10=var3943, $r11=var2662}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	i1 := @parameter1: int;	l2 := @parameter2: long;	z0 := @parameter3: boolean;	i3 := @parameter4: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("New constant pool: startPosition=");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", size=");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", deltaToNext=");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", flush=");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>(z0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", poolCount=");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1