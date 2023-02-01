#include "lists.h"

/**
 * insert_nodeint_at_index - function to insert node at nth position
 * @head: pointer to the list
 * @idx: position ofelement
 * @n: value to insert
 *
 * Return: On success address of element, on failure NULL
 */
listint_t *insert_nodeint_at_index(listint_t **head, unsigned int idx, int n)
{
	listint_t *new = malloc(sizeof(listint_t));
	listint_t *temp;
	unsigned int i;

	if (!head || !new)
		return (NULL);

	temp = *head;
	new->n = n;

	new->next = NULL;

	for (i = 0; i < idx && temp != NULL; i++)
	{
		if (i == idx - 1)
		{
			new->next = temp->next;
			temp->next = new;
			return (new);
		}
		else
			temp = temp->next;
	}
	if (idx == 0)
	{
		new->next = *head;
		*head = new;
		return (new);
	}
	return (NULL);
}
