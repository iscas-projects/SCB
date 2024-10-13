(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1342 0)
(declare-sort var1617 0)
(declare-sort var170 0)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1605297266 (var170) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1342_append/1177541664 (var1342 String) var1342)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun attributes/1605297266 (var170) var3509)
(declare-fun var3509_iterator/-912451715 (var3509) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun elements/1605297266 (var170) var3509)
(declare-fun var3509_size/-959786421 (var3509) Int)
(declare-const null-var1342 var1342)
(declare-const null-String String)
(declare-const null-var170 var170)
(declare-const var1960 var1342) ; Statement: r0 := @parameter0: java.lang.Appendable 
(assert (not (= var1960 null-var1342)))
(declare-const var3695 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3695 null-String)))
(declare-const var3082 var170) ; Statement: r4 := @parameter2: jdk.jfr.internal.MetadataDescriptor$Element 
(assert (not (= var3082 null-var170)))
(define-const var2428 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2428)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2428!1 String)
(assert (= var2428!1 ""))
(assert true)
(define-const var1897 String (append/672562846 var2428!1 var3695)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2428!2 String)
(assert (= var2428!2 (str.++ var2428!1 var3695)))
(assert true)
(define-const var3112 String (append/672562846 var1897 "<")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1897!1 String)
(assert (= var1897!1 (str.++ var1897 "<")))
(define-const var581 String (name/1605297266 var3082)) ; Statement: $r5 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.lang.String name> 
(assert true)
(define-const var2336 String (append/672562846 var3112 var581)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3112!1 String)
(assert (= var3112!1 (str.++ var3112 var581)))
(assert true)
(define-const var1868 String (toString/-2075883882 var2336)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1342_append/1177541664 var1960 (cast-from-String-to-String var1868))) ; Statement: interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>($r8) 

(declare-const var1960!1 var1342)
(declare-const var1868!1 String)
(define-const var2720 var3509 (attributes/1605297266 var3082)) ; Statement: $r9 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List attributes> 
(define-const var290 Iterator (var3509_iterator/-912451715 var2720)) ; Statement: r30 = interfaceinvoke $r9.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3267 Bool (Iterator_hasNext/-1669924200 var290)) ; Statement: $z0 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r10 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements> 
(assert (= (ite var3267 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2895 var3509 (elements/1605297266 var3082)) ; Statement: $r10 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements> 
(define-const var1769 Int (var3509_size/-959786421 var2895)) ; Statement: $i0 = interfaceinvoke $r10.<java.util.List: int size()>() 
 ; Statement: if $i0 != 0 goto interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>(">\n") 
(assert (not (= var1769 0))) ; Cond: $i0 != 0 
;(assert (var1342_append/1177541664 var1960!1 (cast-from-String-to-String ">\n"))) ; Statement: interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>(">\n") 

(declare-const var1960!2 var1342)
(declare-const var147 String)
(define-const var713 var3509 (elements/1605297266 var3082)) ; Statement: $r11 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements> 
(define-const var2249 Iterator (var3509_iterator/-912451715 var713)) ; Statement: $r22 = interfaceinvoke $r11.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1850 Bool (Iterator_hasNext/-1669924200 var2249)) ; Statement: $z1 = interfaceinvoke $r22.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r12 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements> 
(assert (= (ite var1850 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1304 var3509 (elements/1605297266 var3082)) ; Statement: $r12 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements> 
(define-const var3769 Int (var3509_size/-959786421 var1304)) ; Statement: $i1 = interfaceinvoke $r12.<java.util.List: int size()>() 
 ; Statement: if $i1 == 0 goto return 
(assert (= var3769 0)) ; Cond: $i1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1605297266=([jdk.jfr.internal.MetadataDescriptor$Element], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1342_append/1177541664=([java.lang.Appendable, java.lang.CharSequence], java.lang.Appendable), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), attributes/1605297266=([jdk.jfr.internal.MetadataDescriptor$Element], java.util.List), var3509_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), elements/1605297266=([jdk.jfr.internal.MetadataDescriptor$Element], java.util.List), var3509_size/-959786421=([java.util.List], int)}
; {var1342=java.lang.Appendable, var1960=r0, var3695=r2, var1617=null_type, var170=jdk.jfr.internal.MetadataDescriptor$Element, var3082=r4, var2428=$r1, var1897=$r3, var3112=$r6, var581=$r5, var2336=$r7, var1868=$r8, var3509=java.util.List, var2720=$r9, var290=r30, var3267=$z0, var2895=$r10, var1769=$i0, var147=">\n", var713=$r11, var2249=$r22, var1850=$z1, var1304=$r12, var3769=$i1}
; {java.lang.Appendable=var1342, r0=var1960, r2=var3695, null_type=var1617, jdk.jfr.internal.MetadataDescriptor$Element=var170, r4=var3082, $r1=var2428, $r3=var1897, $r6=var3112, $r5=var581, $r7=var2336, $r8=var1868, java.util.List=var3509, $r9=var2720, r30=var290, $z0=var3267, $r10=var2895, $i0=var1769, ">\n"=var147, $r11=var713, $r22=var2249, $z1=var1850, $r12=var1304, $i1=var3769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Appendable;	r2 := @parameter1: java.lang.String;	r4 := @parameter2: jdk.jfr.internal.MetadataDescriptor$Element;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r5 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>($r8);	$r9 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List attributes>;	r30 = interfaceinvoke $r9.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r30.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r10 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements>;	$r10 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements>;	$i0 = interfaceinvoke $r10.<java.util.List: int size()>();	if $i0 != 0 goto interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>(">\n");	interfaceinvoke r0.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>(">\n");	$r11 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements>;	$r22 = interfaceinvoke $r11.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke $r22.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r12 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements>;	$r12 = r4.<jdk.jfr.internal.MetadataDescriptor$Element: java.util.List elements>;	$i1 = interfaceinvoke $r12.<java.util.List: int size()>();	if $i1 == 0 goto return;	return
;block_num 7