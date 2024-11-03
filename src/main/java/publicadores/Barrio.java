/**
 * Barrio.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4.1-SNAPSHOT Nov 07, 2023 (07:57:58 UTC) WSDL2Java emitter.
 */

package publicadores;

public class Barrio implements java.io.Serializable {
    private java.lang.String _value_;
    private static java.util.HashMap _table_ = new java.util.HashMap();

    // Constructor
    protected Barrio(java.lang.String value) {
        _value_ = value;
        _table_.put(_value_,this);
    }

    public static final java.lang.String _CIUDAD_VIEJA = "CIUDAD_VIEJA";
    public static final java.lang.String _CORDON = "CORDON";
    public static final java.lang.String _PARQUE_RODO = "PARQUE_RODO";
    public static final java.lang.String _CENTRO = "CENTRO";
    public static final java.lang.String _PALERMO = "PALERMO";
    public static final Barrio CIUDAD_VIEJA = new Barrio(_CIUDAD_VIEJA);
    public static final Barrio CORDON = new Barrio(_CORDON);
    public static final Barrio PARQUE_RODO = new Barrio(_PARQUE_RODO);
    public static final Barrio CENTRO = new Barrio(_CENTRO);
    public static final Barrio PALERMO = new Barrio(_PALERMO);
    public java.lang.String getValue() { return _value_;}
    public static Barrio fromValue(java.lang.String value)
          throws java.lang.IllegalArgumentException {
        Barrio enumeration = (Barrio)
            _table_.get(value);
        if (enumeration==null) throw new java.lang.IllegalArgumentException();
        return enumeration;
    }
    public static Barrio fromString(java.lang.String value)
          throws java.lang.IllegalArgumentException {
        return fromValue(value);
    }
    public boolean equals(java.lang.Object obj) {return (obj == this);}
    public int hashCode() { return toString().hashCode();}
    public java.lang.String toString() { return _value_;}
    public java.lang.Object readResolve() throws java.io.ObjectStreamException { return fromValue(_value_);}
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new org.apache.axis.encoding.ser.EnumSerializer(
            _javaType, _xmlType);
    }
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new org.apache.axis.encoding.ser.EnumDeserializer(
            _javaType, _xmlType);
    }
    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Barrio.class);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "barrio"));
    }
    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

}
