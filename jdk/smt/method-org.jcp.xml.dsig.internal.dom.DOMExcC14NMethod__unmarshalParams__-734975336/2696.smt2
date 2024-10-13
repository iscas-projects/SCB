(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2744 0)
(declare-sort var2100 0)
(declare-sort var2992 0)
(declare-sort var3546 0)
(declare-sort var3950 0)
(declare-sort var1965 0)
(declare-sort var1635 0)
(declare-sort var2216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2100_getAttributeNS/-926358058 (var2100 String String) String)
(declare-fun inclusiveNamespaces/1787477456 (var3546) String)
(declare-fun cast-from-var2744-to-var3546 (var2744) var3546)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var3950-init () var3950)
(declare-fun <init>/-325640736 (var3950) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1965-init () var1965)
(declare-fun <init>/1025858787 (var1965 var1635) void)
(declare-fun cast-from-var3950-to-var1635 (var3950) var1635)
(declare-fun cast-from-var1965-to-var2216 (var1965) var2216)
(declare-fun params/1787477456 (var3546) var2216)
(declare-const null-var2744 var2744)
(declare-const null-var2100 var2100)
(declare-const null-String String)
(declare-const var3784 var2744) ; Statement: r2 := @this: org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod 
(assert (not (= var3784 null-var2744)))
(declare-const var1918 var2100) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1918 null-var2100)))
(define-const var1171 String (var2100_getAttributeNS/-926358058 var1918 null-String "PrefixList")) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttributeNS(java.lang.String,java.lang.String)>(null, "PrefixList") 
(declare-const var3784!1 var2744)
(assert (not (= var3784!1 null-var2744)))
(assert (= (inclusiveNamespaces/1787477456 (cast-from-var2744-to-var3546 var3784!1)) var1171)) ; Statement: r2.<org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod: java.lang.String inclusiveNamespaces> = r1 
(define-const var3196 Int 0) ; Statement: i1 = 0 
(assert true)
(define-const var2321 Int (indexOf/-1037706067 var1171 32)) ; Statement: i2 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(32) 
(define-const var3384 var3950 var3950-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3384)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>()>() 

(declare-const var3384!1 var3950)
(assert true) ; Non Conditional
(define-const var3908 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i2 == $i4 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (= var2321 var3908)) ; Cond: i2 == $i4 
(assert true)
(define-const var2528 Int (length/-134980193 var1171)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i1 > $i0 goto $r8 = new javax.xml.crypto.dsig.spec.ExcC14NParameterSpec 
(assert (> var3196 var2528)) ; Cond: i1 > $i0 
(define-const var3233 var1965 var1965-init) ; Statement: $r8 = new javax.xml.crypto.dsig.spec.ExcC14NParameterSpec 
(assert true)
;(assert (<init>/1025858787 var3233 (cast-from-var3950-to-var1635 var3384!1))) ; Statement: specialinvoke $r8.<javax.xml.crypto.dsig.spec.ExcC14NParameterSpec: void <init>(java.util.List)>($r7) 

(declare-const var3233!1 var1965)
(declare-const var3384!2 var3950)
(declare-const var3784!2 var2744)
(assert (not (= var3784!2 null-var2744)))
(assert (= (params/1787477456 (cast-from-var2744-to-var3546 var3784!2)) (cast-from-var1965-to-var2216 var3233!1))) ; Statement: r2.<org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod: javax.xml.crypto.dsig.spec.C14NMethodParameterSpec params> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2100_getAttributeNS/-926358058=([org.w3c.dom.Element, java.lang.String, java.lang.String], java.lang.String), inclusiveNamespaces/1787477456=([org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer], java.lang.String), cast-from-var2744-to-var3546=([org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod], org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer), indexOf/-1037706067=([java.lang.String, int], int), var3950-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), var1965-init=([], javax.xml.crypto.dsig.spec.ExcC14NParameterSpec), <init>/1025858787=([javax.xml.crypto.dsig.spec.ExcC14NParameterSpec, java.util.List], void), cast-from-var3950-to-var1635=([java.util.ArrayList], java.util.List), cast-from-var1965-to-var2216=([javax.xml.crypto.dsig.spec.ExcC14NParameterSpec], javax.xml.crypto.dsig.spec.C14NMethodParameterSpec), params/1787477456=([org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer], javax.xml.crypto.dsig.spec.C14NMethodParameterSpec)}
; {var2744=org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod, var3784=r2, var2100=org.w3c.dom.Element, var1918=r0, var2992=null_type, var1171=r1, var3546=org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer, var3196=i1, var2321=i2, var3950=java.util.ArrayList, var3384=$r7, var3908=$i4, var2528=$i0, var1965=javax.xml.crypto.dsig.spec.ExcC14NParameterSpec, var3233=$r8, var1635=java.util.List, var2216=javax.xml.crypto.dsig.spec.C14NMethodParameterSpec}
; {org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod=var2744, r2=var3784, org.w3c.dom.Element=var2100, r0=var1918, null_type=var2992, r1=var1171, org.jcp.xml.dsig.internal.dom.ApacheCanonicalizer=var3546, i1=var3196, i2=var2321, java.util.ArrayList=var3950, $r7=var3384, $i4=var3908, $i0=var2528, javax.xml.crypto.dsig.spec.ExcC14NParameterSpec=var1965, $r8=var3233, java.util.List=var1635, javax.xml.crypto.dsig.spec.C14NMethodParameterSpec=var2216}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r2 := @this: org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttributeNS(java.lang.String,java.lang.String)>(null, "PrefixList");	r2.<org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod: java.lang.String inclusiveNamespaces> = r1;	i1 = 0;	i2 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(32);	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>()>();	$i4 = (int) -1;	if i2 == $i4 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 > $i0 goto $r8 = new javax.xml.crypto.dsig.spec.ExcC14NParameterSpec;	$r8 = new javax.xml.crypto.dsig.spec.ExcC14NParameterSpec;	specialinvoke $r8.<javax.xml.crypto.dsig.spec.ExcC14NParameterSpec: void <init>(java.util.List)>($r7);	r2.<org.jcp.xml.dsig.internal.dom.DOMExcC14NMethod: javax.xml.crypto.dsig.spec.C14NMethodParameterSpec params> = $r8;	return
;block_num 4