/**
 * csc381_mod1.c 
 *
 * A simple kernel module that prints jiffies, HZ, and Golden Ratio Prime values. 
 * 
 * To compile, run makefile by entering "make"
 *
 */

#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/jiffies.h>
#include <linux/gcd.h>
#include <asm/param.h>
#include <linux/hash.h>
#include <linux/gcd.h>

/* This function is called when the module is loaded. */
int simple_init(void)
{
	// Create variable for current jiffies value defined in <linux/jiffies.h>
	unsigned long currentJ = jiffies;
	
	// Create variable to store HZ value defined in <asm/param.h>
	int frequency = HZ;
	
	// Start output
	printk(KERN_INFO "Loading csc381_mod1\n");
	
	// Print jiffies and HZ values
	printk(KERN_INFO "Jiffies: %lu\n", currentJ);
	printk(KERN_INFO "HZ: %d\n", frequency);

	// Print the golden ratio prime from <linux/hash.h>
	printk(KERN_INFO "GRP: %lu\n", GOLDEN_RATIO_PRIME);
	
	// Exit
	return 0;
}

/* This function is called when the module is removed. */
void simple_exit(void) {
	
	// Values for finding GCD
	unsigned long int a = 3300;
	unsigned int b = 24;
	
	// Start output
	printk(KERN_INFO "Removing Module\n");
	
	// Create variable for current jiffies value defined in <linux/jiffies.h>
	unsigned long currentJ = jiffies;

	// Start output
	printk(KERN_INFO "GCD of %lu and %u is %lu\n", a, b, gcd(a, b));
	
	// Print jiffies value
	printk(KERN_INFO "Jiffies: %lu\n", currentJ);
}

/* Macros for registering module entry and exit points. */
module_init( simple_init );
module_exit( simple_exit );

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Simple Module");
MODULE_AUTHOR("SGG");

