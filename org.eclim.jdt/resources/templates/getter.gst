<% if (!overrides && !implementof) { %>
/**
<% if (isBoolean) { %>
 * Determines if this instance is ${property}.
<% } else { %>
 * Gets the ${property} for this instance.
<% } %>
 *
<% if (array) { %>
 * @param index The index to get.
<% } %>
 * @return The ${property}.
 */
<% } else if (org_eclipse_jdt_core_compiler_source < "1.5" || (org_eclipse_jdt_core_compiler_source < "1.6" && implementof)) { %>
/**
 * {@inheritDoc}
 * @see ${superType}#${methodSignature}
 */
<% } %>
<% if ((org_eclipse_jdt_core_compiler_source >= "1.5" && overrides) || (org_eclipse_jdt_core_compiler_source >= "1.6" && implementof)) { %>
@Override
<% } %>
public ${propertyType} ${name}(<% if(array) { %>int index<% } %>)<% if(isinterface){ %>;<% } %>

<% if(!isinterface) { %>
{
<% if(array) { %>
	return this.${property}[index];
<% } else { %>
	return this.${property};
<% } %>
}
<% } %>
