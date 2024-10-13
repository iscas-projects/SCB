(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1237 0)
(declare-sort var2534 0)
(declare-sort var1344 0)
(declare-sort var1937 0)
(declare-sort var2205 0)
(declare-sort var2470 0)
(declare-sort var211 0)
(declare-sort var3581 0)
(declare-sort var3597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun peerCertificates/-396915329 (var1237) var2534)
(declare-fun cast-from-var2534-to-var1344 (var2534) var1344)
(declare-fun var1937-init () var1937)
(declare-fun var2205_collectionSizeOrDefault/-1704999662 (var1344 Int) Int)
(declare-fun <init>/1228603609 (var1937 Int) void)
(declare-fun cast-from-var1937-to-var2470 (var1937) var2470)
(declare-fun var1344_iterator/-693406491 (var1344) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun cast-from-var2470-to-var2534 (var2470) var2534)
(declare-fun toString/-522406933 (var211) String)
(declare-fun cast-from-var2534-to-var211 (var2534) var211)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tlsVersion/-1765581576 (var1237) var3581)
(declare-fun append/-1031950772 (String var211) String)
(declare-fun cast-from-var3581-to-var211 (var3581) var211)
(declare-fun cipherSuite/-1765581576 (var1237) var3597)
(declare-fun cast-from-var3597-to-var211 (var3597) var211)
(declare-fun localCertificates/-1765581576 (var1237) var2534)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1237 var1237)
(declare-const var2926 var1237) ; Statement: r0 := @this: okhttp3.Handshake 
(assert (not (= var2926 null-var1237)))
(assert true)
(define-const var1814 var2534 (peerCertificates/-396915329 var2926)) ; Statement: $r1 = virtualinvoke r0.<okhttp3.Handshake: java.util.List peerCertificates()>() 
(define-const var1042 var1344 (cast-from-var2534-to-var1344 var1814)) ; Statement: $r22 = (java.lang.Iterable) $r1 
(define-const var2066 var1937 var1937-init) ; Statement: $r2 = new java.util.ArrayList 
(define-const var997 Int (var2205_collectionSizeOrDefault/-1704999662 var1042 10)) ; Statement: $i0 = staticinvoke <kotlin.collections.CollectionsKt: int collectionSizeOrDefault(java.lang.Iterable,int)>($r22, 10) 
(assert true)
;(assert (<init>/1228603609 var2066 var997)) ; Statement: specialinvoke $r2.<java.util.ArrayList: void <init>(int)>($i0) 

(declare-const var2066!1 var1937)
(declare-const var997!1 Int)
(define-const var3052 var2470 (cast-from-var1937-to-var2470 var2066!1)) ; Statement: r23 = (java.util.Collection) $r2 
(define-const var3958 Iterator (var1344_iterator/-693406491 var1042)) ; Statement: r24 = interfaceinvoke $r22.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var540 Bool (Iterator_hasNext/-1669924200 var3958)) ; Statement: $z0 = interfaceinvoke r24.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = (java.util.List) r23 
(assert (= (ite var540 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2349 var2534 (cast-from-var2470-to-var2534 var3052)) ; Statement: $r3 = (java.util.List) r23 
(assert true)
(define-const var2485 String (toString/-522406933 (cast-from-var2534-to-var211 var2349))) ; Statement: r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(define-const var2797 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2797)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2797!1 String)
(assert (= var2797!1 ""))
(assert true)
(define-const var104 String (append/672562846 var2797!1 "Handshake{tlsVersion=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Handshake{tlsVersion=") 
(declare-const var2797!2 String)
(assert (= var2797!2 (str.++ var2797!1 "Handshake{tlsVersion=")))
(define-const var2696 var3581 (tlsVersion/-1765581576 var2926)) ; Statement: $r6 = r0.<okhttp3.Handshake: okhttp3.TlsVersion tlsVersion> 
(assert true)
(define-const var1876 String (append/-1031950772 var104 (cast-from-var3581-to-var211 var2696))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var104!1 String)
(assert (str.prefixof var104 var104!1))
(assert true)
(define-const var3220 String (append/672562846 var1876 " cipherSuite=")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cipherSuite=") 
(declare-const var1876!1 String)
(assert (= var1876!1 (str.++ var1876 " cipherSuite=")))
(define-const var1147 var3597 (cipherSuite/-1765581576 var2926)) ; Statement: $r9 = r0.<okhttp3.Handshake: okhttp3.CipherSuite cipherSuite> 
(assert true)
(define-const var3756 String (append/-1031950772 var3220 (cast-from-var3597-to-var211 var1147))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var3220!1 String)
(assert (str.prefixof var3220 var3220!1))
(assert true)
(define-const var3945 String (append/672562846 var3756 " peerCertificates=")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" peerCertificates=") 
(declare-const var3756!1 String)
(assert (= var3756!1 (str.++ var3756 " peerCertificates=")))
(assert true)
(define-const var51 String (append/672562846 var3945 var2485)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3945!1 String)
(assert (= var3945!1 (str.++ var3945 var2485)))
(define-const var2656 var2534 (localCertificates/-1765581576 var2926)) ; Statement: $r14 = r0.<okhttp3.Handshake: java.util.List localCertificates> 
(define-const var981 var1344 (cast-from-var2534-to-var1344 var2656)) ; Statement: $r27 = (java.lang.Iterable) $r14 
(assert true)
(define-const var2596 String (append/672562846 var51 " localCertificates=")) ; Statement: r28 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" localCertificates=") 
(declare-const var51!1 String)
(assert (= var51!1 (str.++ var51 " localCertificates=")))
(define-const var2565 var1937 var1937-init) ; Statement: $r15 = new java.util.ArrayList 
(define-const var419 Int (var2205_collectionSizeOrDefault/-1704999662 var981 10)) ; Statement: $i1 = staticinvoke <kotlin.collections.CollectionsKt: int collectionSizeOrDefault(java.lang.Iterable,int)>($r27, 10) 
(assert true)
;(assert (<init>/1228603609 var2565 var419)) ; Statement: specialinvoke $r15.<java.util.ArrayList: void <init>(int)>($i1) 

(declare-const var2565!1 var1937)
(declare-const var419!1 Int)
(define-const var143 var2470 (cast-from-var1937-to-var2470 var2565!1)) ; Statement: r29 = (java.util.Collection) $r15 
(define-const var3016 Iterator (var1344_iterator/-693406491 var981)) ; Statement: r30 = interfaceinvoke $r27.<java.lang.Iterable: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1452 Bool (Iterator_hasNext/-1669924200 var3016)) ; Statement: $z1 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r16 = (java.util.List) r29 
(assert (= (ite var1452 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2011 var2534 (cast-from-var2470-to-var2534 var143)) ; Statement: $r16 = (java.util.List) r29 
(assert true)
(define-const var2703 String (append/-1031950772 var2596 (cast-from-var2534-to-var211 var2011))) ; Statement: $r17 = virtualinvoke r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var2596!1 String)
(assert (str.prefixof var2596 var2596!1))
(assert true)
(define-const var3349 String (append/-1166366385 var2703 125)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2703!1 String)
(assert (str.prefixof var2703 var2703!1))
(assert true)
(define-const var1472 String (toString/-2075883882 var3349)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {peerCertificates/-396915329=([okhttp3.Handshake], java.util.List), cast-from-var2534-to-var1344=([java.util.List], java.lang.Iterable), var1937-init=([], java.util.ArrayList), var2205_collectionSizeOrDefault/-1704999662=([java.lang.Iterable, int], int), <init>/1228603609=([java.util.ArrayList, int], void), cast-from-var1937-to-var2470=([java.util.ArrayList], java.util.Collection), var1344_iterator/-693406491=([java.lang.Iterable], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), cast-from-var2470-to-var2534=([java.util.Collection], java.util.List), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2534-to-var211=([java.util.List], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tlsVersion/-1765581576=([okhttp3.Handshake], okhttp3.TlsVersion), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3581-to-var211=([okhttp3.TlsVersion], java.lang.Object), cipherSuite/-1765581576=([okhttp3.Handshake], okhttp3.CipherSuite), cast-from-var3597-to-var211=([okhttp3.CipherSuite], java.lang.Object), localCertificates/-1765581576=([okhttp3.Handshake], java.util.List), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1237=okhttp3.Handshake, var2926=r0, var2534=java.util.List, var1814=$r1, var1344=java.lang.Iterable, var1042=$r22, var1937=java.util.ArrayList, var2066=$r2, var2205=kotlin.collections.CollectionsKt, var997=$i0, var2470=java.util.Collection, var3052=r23, var3958=r24, var540=$z0, var2349=$r3, var211=java.lang.Object, var2485=r4, var2797=$r5, var104=$r7, var3581=okhttp3.TlsVersion, var2696=$r6, var1876=$r8, var3220=$r10, var3597=okhttp3.CipherSuite, var1147=$r9, var3756=$r11, var3945=$r12, var51=$r13, var2656=$r14, var981=$r27, var2596=r28, var2565=$r15, var419=$i1, var143=r29, var3016=r30, var1452=$z1, var2011=$r16, var2703=$r17, var3349=$r18, var1472=$r19}
; {okhttp3.Handshake=var1237, r0=var2926, java.util.List=var2534, $r1=var1814, java.lang.Iterable=var1344, $r22=var1042, java.util.ArrayList=var1937, $r2=var2066, kotlin.collections.CollectionsKt=var2205, $i0=var997, java.util.Collection=var2470, r23=var3052, r24=var3958, $z0=var540, $r3=var2349, java.lang.Object=var211, r4=var2485, $r5=var2797, $r7=var104, okhttp3.TlsVersion=var3581, $r6=var2696, $r8=var1876, $r10=var3220, okhttp3.CipherSuite=var3597, $r9=var1147, $r11=var3756, $r12=var3945, $r13=var51, $r14=var2656, $r27=var981, r28=var2596, $r15=var2565, $i1=var419, r29=var143, r30=var3016, $z1=var1452, $r16=var2011, $r17=var2703, $r18=var3349, $r19=var1472}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.Handshake;	$r1 = virtualinvoke r0.<okhttp3.Handshake: java.util.List peerCertificates()>();	$r22 = (java.lang.Iterable) $r1;	$r2 = new java.util.ArrayList;	$i0 = staticinvoke <kotlin.collections.CollectionsKt: int collectionSizeOrDefault(java.lang.Iterable,int)>($r22, 10);	specialinvoke $r2.<java.util.ArrayList: void <init>(int)>($i0);	r23 = (java.util.Collection) $r2;	r24 = interfaceinvoke $r22.<java.lang.Iterable: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r24.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = (java.util.List) r23;	$r3 = (java.util.List) r23;	r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Handshake{tlsVersion=");	$r6 = r0.<okhttp3.Handshake: okhttp3.TlsVersion tlsVersion>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" cipherSuite=");	$r9 = r0.<okhttp3.Handshake: okhttp3.CipherSuite cipherSuite>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" peerCertificates=");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r14 = r0.<okhttp3.Handshake: java.util.List localCertificates>;	$r27 = (java.lang.Iterable) $r14;	r28 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" localCertificates=");	$r15 = new java.util.ArrayList;	$i1 = staticinvoke <kotlin.collections.CollectionsKt: int collectionSizeOrDefault(java.lang.Iterable,int)>($r27, 10);	specialinvoke $r15.<java.util.ArrayList: void <init>(int)>($i1);	r29 = (java.util.Collection) $r15;	r30 = interfaceinvoke $r27.<java.lang.Iterable: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r16 = (java.util.List) r29;	$r16 = (java.util.List) r29;	$r17 = virtualinvoke r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 5