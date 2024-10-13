(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var912 0)
(declare-sort var11 0)
(declare-sort var2909 0)
(declare-sort var983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-1149201559 (var11) String)
(declare-fun cast-from-var912-to-var11 (var912) var11)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun writer/1319645973 (var912) var2909)
(declare-fun get/-664834555 (var2909) var983)
(declare-fun append/-1031950772 (String var983) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var912 var912)
(declare-const var1829 var912) ; Statement: r1 := @this: org.apache.lucene.index.IndexWriterConfig 
(assert (not (= var1829 null-var912)))
(define-const var2722 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1003 String (toString/-1149201559 (cast-from-var912-to-var11 var1829))) ; Statement: $r2 = specialinvoke r1.<org.apache.lucene.index.LiveIndexWriterConfig: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var2722 var1003)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var2722!1 String)
(assert (= var2722!1 var1003))
(assert true)
(define-const var767 String (append/672562846 var2722!1 "writer=")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("writer=") 
(declare-const var2722!2 String)
(assert (= var2722!2 (str.++ var2722!1 "writer=")))
(define-const var2637 var2909 (writer/1319645973 var1829)) ; Statement: $r3 = r1.<org.apache.lucene.index.IndexWriterConfig: org.apache.lucene.util.SetOnce writer> 
(assert true)
(define-const var548 var983 (get/-664834555 var2637)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.lucene.util.SetOnce: java.lang.Object get()>() 
(assert true)
(define-const var1872 String (append/-1031950772 var767 var548)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var767!1 String)
(assert (str.prefixof var767 var767!1))
(assert true)
;(assert (append/672562846 var1872 "\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1872!1 String)
(assert (= var1872!1 (str.++ var1872 "\n")))
(assert true)
(define-const var3828 String (toString/-2075883882 var2722!2)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-1149201559=([org.apache.lucene.index.LiveIndexWriterConfig], java.lang.String), cast-from-var912-to-var11=([org.apache.lucene.index.IndexWriterConfig], org.apache.lucene.index.LiveIndexWriterConfig), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), writer/1319645973=([org.apache.lucene.index.IndexWriterConfig], org.apache.lucene.util.SetOnce), get/-664834555=([org.apache.lucene.util.SetOnce], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var912=org.apache.lucene.index.IndexWriterConfig, var1829=r1, var2722=$r0, var11=org.apache.lucene.index.LiveIndexWriterConfig, var1003=$r2, var767=$r5, var2909=org.apache.lucene.util.SetOnce, var2637=$r3, var983=java.lang.Object, var548=$r4, var1872=$r6, var3828=$r7}
; {org.apache.lucene.index.IndexWriterConfig=var912, r1=var1829, $r0=var2722, org.apache.lucene.index.LiveIndexWriterConfig=var11, $r2=var1003, $r5=var767, org.apache.lucene.util.SetOnce=var2909, $r3=var2637, java.lang.Object=var983, $r4=var548, $r6=var1872, $r7=var3828}
;seq <org.apache.lucene.index.LiveIndexWriterConfig: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.index.IndexWriterConfig;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<org.apache.lucene.index.LiveIndexWriterConfig: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("writer=");	$r3 = r1.<org.apache.lucene.index.IndexWriterConfig: org.apache.lucene.util.SetOnce writer>;	$r4 = virtualinvoke $r3.<org.apache.lucene.util.SetOnce: java.lang.Object get()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1